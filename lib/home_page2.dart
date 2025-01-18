// import 'package:flutter/material.dart';
// import 'package:encrypt/encrypt.dart' as encrypt;
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   var textController = TextEditingController();
//   String? encryptedMessage;
//   String? decryptedMessage;
//
//   final initVector = encrypt.IV.fromLength(16);
//   final encrypter = encrypt.Encrypter(
//       encrypt.AES(encrypt.Key.fromUtf8("16characterslong")));
//
//   void encryptMessage() {
//     final plainText = textController.text;
//     if (plainText.isNotEmpty) {
//       final encrypted = encrypter.encrypt(plainText, iv: initVector);
//
//       setState(() {
//         encryptedMessage = encrypted.base64;
//       });
//
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: const Text("Encrypted Message"),
//             content: Text(encryptedMessage!),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text("Cancel"),
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   decryptMessageDialog();
//                 },
//                 child: const Text("Decrypt"),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   void decryptMessage() {
//     if (encryptedMessage != null) {
//       final encryptedData = encrypt.Encrypted.fromBase64(encryptedMessage!);
//       final decrypted = encrypter.decrypt(encryptedData, iv: initVector);
//
//       setState(() {
//         decryptedMessage = decrypted;
//       });
//     }
//   }
//
//   void decryptMessageDialog() {
//     decryptMessage();
//
//     if (decryptedMessage != null) {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: const Text("Decrypted Message"),
//             content: Text(decryptedMessage!),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text("Cancel"),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   void clearData() {
//     setState(() {
//       textController.clear();
//       encryptedMessage = null;
//       decryptedMessage = null;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text(
//           "Encryption",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.refresh),
//             onPressed: clearData,
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: textController,
//               decoration: const InputDecoration(
//                 labelText: "Enter your message",
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: encryptMessage,
//             child: const Text("Encrypt Message"),
//           ),
//         ],
//       ),
//     );
//   }
// }























//
//
// import 'package:flutter/material.dart';
// import 'package:encrypt/encrypt.dart' as encrypt;
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   var textController = TextEditingController();
//   String? encryptedMessage;
//   String? decryptedMessage;
//
//   final initVector = encrypt.IV.fromLength(16);
//   final encrypter = encrypt.Encrypter(
//       encrypt.AES(encrypt.Key.fromUtf8("16characterslong")));
//
//   void encryptMessage() {
//     final plainText = textController.text;
//     if (plainText.isNotEmpty) {
//       final encrypted = encrypter.encrypt(plainText, iv: initVector);
//
//       setState(() {
//         encryptedMessage = encrypted.base64;
//       });
//
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             title: const Text("Encrypted Message"),
//             content: Text(encryptedMessage!),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text("Cancel"),
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   decryptMessageDialog();
//                 },
//                 child: const Text("Decrypt"),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   void decryptMessage() {
//     if (encryptedMessage != null) {
//       final encryptedData = encrypt.Encrypted.fromBase64(encryptedMessage!);
//       final decrypted = encrypter.decrypt(encryptedData, iv: initVector);
//
//       setState(() {
//         decryptedMessage = decrypted;
//       });
//     }
//   }
//
//   void decryptMessageDialog() {
//     decryptMessage();
//
//     if (decryptedMessage != null) {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             title: const Text("Decrypted Message"),
//             content: Text(decryptedMessage!),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text("Cancel"),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   void clearData() {
//     setState(() {
//       textController.clear();
//       encryptedMessage = null;
//       decryptedMessage = null;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text(
//           "Encryption Tool",
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.refresh),
//             onPressed: clearData,
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: textController,
//               decoration: InputDecoration(
//                 labelText: "Enter your message",
//                 labelStyle: const TextStyle(fontSize: 18),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//               maxLines: 3,
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: encryptMessage,
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(vertical: 15),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//               child: const Text(
//                 "Encrypt Message",
//                 style: TextStyle(fontSize: 16),
//               ),
//             ),
//             if (encryptedMessage != null) ...[
//               const SizedBox(height: 20),
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "Encrypted Message:",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                     Text(
//                       encryptedMessage!,
//                       style: const TextStyle(fontSize: 14),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ],
//         ),
//       ),
//     );
//   }
// }













//
// import 'package:flutter/material.dart';
// import 'package:encrypt/encrypt.dart' as encrypt;
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   var textController = TextEditingController();
//   String? encryptedMessage;
//   String? decryptedMessage;
//
//   final initVector = encrypt.IV.fromLength(16);
//   final encrypter = encrypt.Encrypter(
//       encrypt.AES(encrypt.Key.fromUtf8("16characterslong")));
//
//   void encryptMessage() {
//     final plainText = textController.text;
//     if (plainText.isNotEmpty) {
//       final encrypted = encrypter.encrypt(plainText, iv: initVector);
//
//       setState(() {
//         encryptedMessage = encrypted.base64;
//       });
//
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             title: const Text("Encrypted Message"),
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(encryptedMessage!),
//                 const SizedBox(height: 10),
//                 const Text("Do you want to decrypt the message?", style: TextStyle(fontWeight: FontWeight.bold)),
//               ],
//             ),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text("Cancel"),
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   decryptMessageDialog();
//                 },
//                 child: const Text("Decrypt"),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   void decryptMessage() {
//     if (encryptedMessage != null) {
//       final encryptedData = encrypt.Encrypted.fromBase64(encryptedMessage!);
//       final decrypted = encrypter.decrypt(encryptedData, iv: initVector);
//
//       setState(() {
//         decryptedMessage = decrypted;
//       });
//     }
//   }
//
//   void decryptMessageDialog() {
//     decryptMessage();
//
//     if (decryptedMessage != null) {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             title: const Text("Decrypted Message"),
//             content: Text(decryptedMessage!),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text("Cancel"),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   void clearData() {
//     setState(() {
//       textController.clear();
//       encryptedMessage = null;
//       decryptedMessage = null;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text(
//           "Encryption Tool",
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.refresh),
//             onPressed: clearData,
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: textController,
//               decoration: InputDecoration(
//                 labelText: "Enter your message",
//                 labelStyle: const TextStyle(fontSize: 18),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//               maxLines: 3,
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: encryptMessage,
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(vertical: 15),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//               child: const Text(
//                 "Encrypt Message",
//                 style: TextStyle(fontSize: 16),
//               ),
//             ),
//             if (encryptedMessage != null) ...[
//               const SizedBox(height: 20),
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "Encrypted Message:",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                     Text(
//                       encryptedMessage!,
//                       style: const TextStyle(fontSize: 14),
//                     ),
//                     const SizedBox(height: 10),
//                     ElevatedButton(
//                       onPressed: decryptMessageDialog,
//                       style: ElevatedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(vertical: 10),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       child: const Text("Decrypt Message"),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ],
//         ),
//       ),
//     );
//   }
// }









//
//
// import 'package:flutter/material.dart';
// import 'package:encrypt/encrypt.dart' as encrypt;
// import 'package:flutter/services.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   var textController = TextEditingController();
//   var keyController = TextEditingController();
//   String? encryptedMessage;
//   String? decryptedMessage;
//   bool isDarkTheme = false;
//
//   final initVector = encrypt.IV.fromLength(16);
//   encrypt.Encrypter? encrypter;
//
//   void updateEncrypter() {
//     final keyText = keyController.text;
//     if (keyText.isNotEmpty && keyText.length == 16) {
//       encrypter = encrypt.Encrypter(encrypt.AES(encrypt.Key.fromUtf8(keyText)));
//     } else {
//       encrypter = null;
//     }
//   }
//
//   void encryptMessage() {
//     updateEncrypter();
//     if (encrypter == null) {
//       showErrorDialog("Invalid Key", "Encryption key must be 16 characters long.");
//       return;
//     }
//
//     final plainText = textController.text;
//     if (plainText.isNotEmpty) {
//       final encrypted = encrypter!.encrypt(plainText, iv: initVector);
//
//       setState(() {
//         encryptedMessage = encrypted.base64;
//       });
//
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             title: const Text("Encrypted Message"),
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(encryptedMessage!),
//                 const SizedBox(height: 10),
//                 const Text("Do you want to decrypt the message?", style: TextStyle(fontWeight: FontWeight.bold)),
//               ],
//             ),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text("Cancel"),
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   decryptMessageDialog();
//                 },
//                 child: const Text("Decrypt"),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   void decryptMessage() {
//     if (encrypter == null) {
//       showErrorDialog("Invalid Key", "Decryption key must be 16 characters long.");
//       return;
//     }
//
//     if (encryptedMessage != null) {
//       final encryptedData = encrypt.Encrypted.fromBase64(encryptedMessage!);
//       final decrypted = encrypter!.decrypt(encryptedData, iv: initVector);
//
//       setState(() {
//         decryptedMessage = decrypted;
//       });
//     }
//   }
//
//   void decryptMessageDialog() {
//     decryptMessage();
//
//     if (decryptedMessage != null) {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             title: const Text("Decrypted Message"),
//             content: Text(decryptedMessage!),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text("Cancel"),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   void showErrorDialog(String title, String message) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text(title),
//           content: Text(message),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text("OK"),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void clearData() {
//     setState(() {
//       textController.clear();
//       keyController.clear();
//       encryptedMessage = null;
//       decryptedMessage = null;
//     });
//   }
//
//   void toggleTheme() {
//     setState(() {
//       isDarkTheme = !isDarkTheme;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: const Text(
//             "Encryption Tool",
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.refresh),
//               onPressed: clearData,
//             ),
//             IconButton(
//               icon: Icon(isDarkTheme ? Icons.light_mode : Icons.dark_mode),
//               onPressed: toggleTheme,
//             ),
//           ],
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               TextField(
//                 controller: keyController,
//                 decoration: InputDecoration(
//                   labelText: "Enter encryption key (16 characters)",
//                   labelStyle: const TextStyle(fontSize: 18),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 maxLength: 16,
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 controller: textController,
//                 decoration: InputDecoration(
//                   labelText: "Enter your message",
//                   labelStyle: const TextStyle(fontSize: 18),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 maxLines: 3,
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: encryptMessage,
//                 style: ElevatedButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 child: const Text(
//                   "Encrypt Message",
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ),
//               if (encryptedMessage != null) ...[
//                 const SizedBox(height: 20),
//                 Container(
//                   padding: const EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "Encrypted Message:",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                         ),
//                       ),
//                       Text(
//                         encryptedMessage!,
//                         style: const TextStyle(fontSize: 14),
//                       ),
//                       const SizedBox(height: 10),
//                       ElevatedButton(
//                         onPressed: decryptMessageDialog,
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(vertical: 10),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         child: const Text("Decrypt Message"),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           if (encryptedMessage != null) {
//                             Clipboard.setData(ClipboardData(text: encryptedMessage!));
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(content: Text("Encrypted message copied to clipboard!")),
//                             );
//                           } else {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(content: Text("No encrypted message to copy!")),
//                             );
//                           }
//                         },
//                         child: const Text("Copy to Clipboard"),
//                       ),
//
//                     ],
//                   ),
//                 ),
//               ],
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
