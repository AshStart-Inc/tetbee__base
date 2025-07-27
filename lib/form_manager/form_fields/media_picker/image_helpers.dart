import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';

class ImageHelpers {
  static Future<List<XFile>> getImage(
    ImageSource source, {
    bool multi = false,
    int maxSize = 1080,
  }) async {
    final picker = ImagePicker();

    // 다중 선택
    List<XFile>? pickedFiles;
    if (multi) {
      pickedFiles = await picker.pickMultiImage();
    } else {
      final XFile? single = await picker.pickImage(
        source: source,
        preferredCameraDevice: CameraDevice.rear,
      );
      pickedFiles = single != null ? [single] : [];
    }

    if (pickedFiles.isEmpty) return [];

    // 모든 이미지 변환
    List<XFile> converted = [];
    for (final xfile in pickedFiles) {
      final File file = File(xfile.path);
      final bytes = await file.readAsBytes();
      final decoded = img.decodeImage(bytes);
      if (decoded == null) continue;

      final resized = img.copyResize(decoded, width: maxSize);
      final encoded = img.encodePng(resized);
      final newPath =
          '${xfile.path.replaceAll(RegExp(r'\.\w+$'), '')}_converted.png';
      final newFile = await File(newPath).writeAsBytes(encoded);

      converted.add(XFile(newFile.path));
    }

    return converted;
  }

  static Future<File> fixJpegOrientation(XFile xfile) async {
    final bytes = await xfile.readAsBytes();
    final originalImage = img.decodeImage(bytes);
    if (originalImage == null) throw Exception('Image decoding failed');

    final jpg = img.encodeJpg(originalImage); // 재인코딩

    final newPath = xfile.path.replaceAll('.jpg', '_fixed.jpg');
    return File(newPath).writeAsBytes(jpg);
  }

  // Future saveImageFileInGallery(StoredData storedData) async {
  //   final _storageRef = FirebaseStorage.instance.ref();
  //   final islandRef = _storageRef.child(storedData.getPath());
  //   try {
  //     final Uint8List? data = await islandRef.getData();
  //     final tempDirec = await getTemporaryDirectory();
  //     final path = tempDirec.path;
  //     File _file = File('$path/${storedData.name}');
  //     await _file.writeAsBytes(data!);
  //     GallerySaver.saveImage(_file.path).then((value) {});
  //   } on FirebaseException catch (e) {
  //     print(e);
  //   }
  // }
}
