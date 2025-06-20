import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;
import 'package:image_picker/image_picker.dart';
import 'package:tetbee__base/database_service/database_exports.dart';
import 'package:tetbee__base/models/common/stored_data.dart';

class StorageHelper {
  static Future<StoredData> uploadXFileToStorage({
    required XFile xFile,
    required String folder,
    required FilePurpose filePurpose,
    String? customFileName,
  }) async {
    final fileExtension = p.extension(xFile.path);
    final fileName =
        customFileName ?? DateTime.now().millisecondsSinceEpoch.toString();
    final storagePath = '$folder/$fileName$fileExtension';

    final ref = FirebaseStorage.instance.ref().child(storagePath);

    final uploadTask = await ref.putFile(
      File(xFile.path),
      SettableMetadata(
        contentType: lookupMimeType(xFile.path) ?? 'application/octet-stream',
      ),
    );

    final downloadUrl = await uploadTask.ref.getDownloadURL();
    final fileSize = await xFile.length();
    final mimeType = lookupMimeType(xFile.path);

    StoredData data = StoredData(
      userId: folder,
      url: downloadUrl,
      name: xFile.name,
      dataPath: storagePath,
      mimeType: mimeType,
      size: fileSize,
      xFile: xFile,
      filePurpose: filePurpose,
      uploadedAt: DateTime.now(),
    );

    //add stored data in firebase store
    await DatabaseService.write(
      types: getDataTypes(DataModel.storedData, docId: folder),
      userId: folder,
      dataModel: DataModel.storedData,
      data: data.toJson(),
    );
    return data;
  }
}
