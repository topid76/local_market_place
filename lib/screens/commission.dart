import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CommissionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CommissionPageState();
}

class _CommissionPageState extends State<CommissionPage> {
  XFile? _selectedImage;
  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = XFile(returnedImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Commision")),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
