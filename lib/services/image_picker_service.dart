import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

import '../extensions/context.dart';
import '../utils/action_sheet_utils.dart';

class _ImagePickerService {
  final _imagePicker = ImagePicker();

  Future<LocalFileData?> pickImage({
    final String? customImageName,
    final BuildContext? context,
  }) async {
    ImageSource? imageSource;
    if (context != null) {
      imageSource = await ActionSheetUtils.show<ImageSource>(
        context: context,
        actions: [
          ActionSheetAction(
            title: context.appLocalizations.imagePicker_camera,
            autoPop: false,
            onTap: (final ctx) => Navigator.pop(ctx, ImageSource.camera),
          ),
          ActionSheetAction(
            title: context.appLocalizations.imagePicker_gallery,
            autoPop: false,
            onTap: (final ctx) => Navigator.pop(ctx, ImageSource.gallery),
          ),
        ],
      );
      if (imageSource == null) {
        return null;
      }
    }
    final imageFile = await _imagePicker.pickImage(
      source: imageSource ?? ImageSource.gallery,
      maxWidth: 1024,
      maxHeight: 1024,
      requestFullMetadata: false,
    );
    if (imageFile == null) {
      return null;
    }
    return LocalFileData(
      name: customImageName == null
          ? imageFile.name
          : '$customImageName${path.extension(imageFile.name)}',
      path: imageFile.path,
    );
  }
}

class LocalFileData {
  final String name;
  final String path;

  LocalFileData({
    required this.name,
    required this.path,
  });
}

final imagePickerService = _ImagePickerService();
