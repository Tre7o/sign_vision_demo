import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? imagePath;
  final pickImage = ImagePicker();

  // pickCameraImage() async {
  //   final XFile? image = await pickImage.pickImage(source: ImageSource.camera);

  //   if (image != null) {
  //     setState(() {
  //       imagePath = File(image.path);
  //     });
  //   }
  // }

  // pickGalleryImage() async {
  //   final XFile? image = await pickImage.pickImage(source: ImageSource.gallery);

  //   if (image != null) {
  //     setState(() {
  //       imagePath = File(image.path);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image Recognizer'),
        ),
        body: Container(
          child: imagePath == null
              ? const Text("There is no image")
              : Image.file(File(imagePath!.path)),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                onPressed: () {
                  // pickCameraImage();
                },
                child: const Icon(Icons.camera_alt_outlined)),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
                onPressed: () {
                  // pickGalleryImage();
                },
                child: const Icon(Icons.browse_gallery_outlined)),
          ],
        ));
  }
}
