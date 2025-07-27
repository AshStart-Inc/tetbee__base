import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;
import 'package:tetbee__base/database_service/database_exports.dart';
import 'package:tetbee__base/models/common/stored_data.dart';

class StorageHelper {
  static Future<void> uploadFiles(
    List<StoredData> data, {
    required DataModel dataModel,
    required List<String> types,
    required String userId,
    required FilePurpose filePurpose,
  }) async {
    if (data.isEmpty) return;
    if (data.length == 1) {
      StoredData updatedData = await uploadXFileToStorage(
        data: data.first,
        folder: userId,
      );

      await DatabaseService.write(
        types: types,
        userId: userId,
        dataModel: dataModel,
        data:
            updatedData
                .copyWith(userId: userId, filePurpose: filePurpose)
                .toJson(),
      );
    } else {
      List<Future> uploadInStorage = [];
      List<Future> uploadInFirebase = [];
      List<StoredData> updatedData = [];
      // parse data and update in storage
      for (StoredData d in data) {
        uploadInStorage.add(
          uploadXFileToStorage(data: d, folder: userId).then((item) {
            updatedData.add(item);
          }),
        );
      }
      await Future.wait(uploadInStorage);
      // create firebase document
      for (StoredData d in updatedData) {
        uploadInFirebase.add(
          DatabaseService.write(
            types: types,
            userId: userId,
            dataModel: dataModel,
            data: d.copyWith(userId: userId, filePurpose: filePurpose).toJson(),
          ),
        );
      }
      await Future.wait(uploadInFirebase);
    }
  }

  static Future<StoredData> uploadXFileToStorage({
    required StoredData data,
    required String folder,
    String? customFileName,
  }) async {
    final fileExtension = p.extension(data.xFile!.path);
    final fileName =
        customFileName ?? DateTime.now().millisecondsSinceEpoch.toString();
    final storagePath = '$folder/$fileName$fileExtension';

    final ref = FirebaseStorage.instance.ref().child(storagePath);

    final uploadTask = await ref.putFile(
      File(data.xFile!.path),
      SettableMetadata(
        contentType:
            lookupMimeType(data.xFile!.path) ?? 'application/octet-stream',
      ),
    );

    final downloadUrl = await uploadTask.ref.getDownloadURL();
    final fileSize = await data.xFile!.length();
    final mimeType = lookupMimeType(data.xFile!.path);

    return data.copyWith(
      userId: folder,
      url: downloadUrl,
      name: data.xFile!.name,
      dataPath: storagePath,
      mimeType: mimeType,
      size: fileSize,
      xFile: data.xFile!,
      uploadedAt: DateTime.now(),
    );
  }
}
