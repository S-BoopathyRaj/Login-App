// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:login_app/Profile/user/user_data.dart'; // Ensure this is correct
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart';
// import 'package:image_picker/image_picker.dart';

// class EditImagePage extends StatefulWidget {
//   const EditImagePage({Key? key}) : super(key: key);

//   @override
//   _EditImagePageState createState() => _EditImagePageState();
// }

// class _EditImagePageState extends State<EditImagePage> {
//   late UserData user;
//   final ImagePicker _picker = ImagePicker();

//   @override
//   void initState() {
//     super.initState();
//     user = UserData.myUser as UserData; // Ensure UserData.myUser is properly initialized
//   }

//   Future<void> _pickImage() async {
//     final pickedSource = await showDialog<ImageSource>(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Choose Image Source'),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context, ImageSource.camera),
//             child: const Text('Camera'),
//           ),
//           TextButton(
//             onPressed: () => Navigator.pop(context, ImageSource.gallery),
//             child: const Text('Gallery'),
//           ),
//         ],
//       ),
//     );

//     if (pickedSource != null) {
//       try {
//         final pickedImage = await _picker.pickImage(source: pickedSource);
//         if (pickedImage == null) return;

//         final directory = await getApplicationDocumentsDirectory();
//         final name = basename(pickedImage.path);
//         final imageFile = File('${directory.path}/$name');
//         await File(pickedImage.path).copy(imageFile.path);

//         setState(() {
//           user.imagePath = imageFile.path; // Assuming UserData has a property imagePath
//         });
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error picking image: $e')),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Edit Profile Picture'),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: <Widget>[
//           const SizedBox(
//             width: 330,
//             child: Text(
//               "Upload a photo of yourself:",
//               style: TextStyle(
//                 fontSize: 23,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 20),
//             child: SizedBox(
//               width: 330,
//               child: GestureDetector(
//                 onTap: _pickImage,
//                 child: user.imagePath == null
//                     ? const Placeholder()  // Fallback if no image is available
//                     : Image.file(File(user.imagePath!)),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 40),
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: SizedBox(
//                 width: 330,
//                 height: 50,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Implement your update logic here
//                   },
//                   child: const Text(
//                     'Update',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }