import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tasahil/widgets/shakawy_item.dart';

class ShakawyView extends StatefulWidget {
  const ShakawyView({super.key});

  @override
  State<ShakawyView> createState() => _ShakawyViewState();
}

class _ShakawyViewState extends State<ShakawyView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repasswordController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repasswordController.dispose();
    _descriptionController.dispose();
  }

  File? _image;
  final imagePicker = ImagePicker();

  Future uploadImage()
  async{
    var pickedImage = await imagePicker.pickImage(source: ImageSource.camera);
    if(pickedImage != null)
    {
      setState(() {
        _image = File(pickedImage.path);
      });
    }else{}
  }
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    // final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              ShakawyItem(
                  controller: _emailController,
                  hintText: 'موضوع الشكويٍ',
              ),
              SizedBox(height: screenHight * 0.02),
              //وصف مختصر للشكوي
              ///////////////////////////////////////////////
              ShakawyItem(
                height: 250,
                controller: _emailController,
                hintText: 'وصف مختصر للشكويٍ',
              ),
              SizedBox(height: screenHight * 0.02),
              //////////////////////////////////////////////////////////////
              ShakawyItem(
                controller: _emailController,
                hintText: 'المحافظه',
              ),
              SizedBox(height: screenHight * 0.02),
              ///////////////////////////////////////
              ShakawyItem(
                controller: _emailController,
                hintText: 'المركز/المدينه',
              ),
              SizedBox(height: screenHight * 0.02),
              ///////////////////////////////////////
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      onPressed: ()
                      {
                        uploadImage();
                      },
                      icon: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:
                        [
                          _image == null ? const Text('') : Image.file(_image!),
                          const Icon(Icons.camera_alt_outlined),
                          const Text('ارفاق صوره'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHight * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                          "ارسل الشكوي",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
