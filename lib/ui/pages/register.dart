part of 'pages.dart';

// class Register extends StatefulWidget {
//   final Function toggleView;
//   Register({this.toggleView});

//   @override
//   _RegisterState createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
//   final AuthServices _auth = AuthServices();
//   final _formKey = GlobalKey<FormState>();

//   String email = '';
//   String password = '';
//   String error = '';

//   bool _showPassword = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: greenColor,
//           actions: [
//             FlatButton.icon(
//               icon: Icon(Icons.person),
//               label: Text('Sign In'),
//               onPressed: () {
//                 widget.toggleView();
//               },
//             ),
//           ],
//           title: Text('Register'),
//         ),
//         body: Center(
//             child: Form(
//           key: _formKey,
//           child: Column(children: [
//             TextFormField(
//               validator: (val) => val.isEmpty ? "Masukan ID" : null,
//               onChanged: (val) {
//                 setState(() {
//                   email = val;
//                 });
//               },
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 prefixIcon: Icon(
//                   Icons.email,
//                   size: 25,
//                 ),
//                 labelText: "ID",
//                 labelStyle: TextStyle(fontSize: 15, fontFamily: 'Felbridge'),
//                 hintText: "Masukan Administrator ID",
//               ),
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             TextFormField(
//               validator: (val) => val.isEmpty ? "Masukan Password" : null,
//               onChanged: (val) {
//                 password = val;
//               },
//               obscureText: !_showPassword,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 prefixIcon: Icon(
//                   Icons.lock,
//                   size: 25,
//                 ),
//                 labelText: "Kata Sandi",
//                 labelStyle: TextStyle(fontSize: 15, fontFamily: 'Felbridge'),
//                 hintText: "Masukkan Kata Sandi Administrator",
//                 suffixIcon: GestureDetector(
//                   onTap: () {
//                     print('visibility button pressed');
//                     setState(() {
//                       _showPassword = !_showPassword;
//                     });
//                   },
//                   child: Icon(
//                       _showPassword ? Icons.visibility : Icons.visibility_off),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             RaisedButton(
//                 color: Colors.pink,
//                 child: Text('Register'),
//                 onPressed: () async {
//                   if (_formKey.currentState.validate()) {
//                     dynamic result = await _auth.registerWithEmailWithPassword(
//                         email, password);
//                     if (result == null) {
//                       setState(() => error = 'masukan ID yang valid');
//                     }
//                   }
//                 }),
//             SizedBox(
//               height: 10,
//             ),
//             Text(error, style: TextStyle(color: Colors.red))
//           ]),
//         )));
//   }
// }
