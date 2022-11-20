import 'package:flutter/material.dart';
import 'main.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  TextEditingController mail = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState() {
    mail.text = ""; //innitail value of text field
    password.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 200),
      height: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Colors.grey.shade300.withOpacity(0.3),
        image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop),
          image: AssetImage('assets/images/YoursWorld.gif'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 250.0),
            width: MediaQuery.of(context).size.width * 0.4,
            alignment: Alignment.bottomCenter,
          ),
          // Row(
          //   children: const [
          //     Expanded(
          //       child: Padding(
          //         padding: EdgeInsets.only(left: 40.0),
          //         child: Text(
          //           'EMAIL',
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //               color: Colors.redAccent,
          //               fontSize: 15.0),
          //         ),
          //       ),
          //     )
          //   ],
          // ),

          Card(
            color: Colors.white.withOpacity(0.5),
            child: Container(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  TextField(
                    controller: mail,
                    decoration: const InputDecoration(
                      labelText: 'Mail',
                      prefixIcon: Icon(
                        Icons.alternate_email,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Row(
          //   children: const [
          //     Expanded(
          //       child: Padding(
          //         padding: EdgeInsets.only(left: 40.0),
          //         child: Text(
          //           'PASSWORD',
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //               color: Colors.redAccent,
          //               fontSize: 15.0),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 40.0, right: 40.0, top: 10),
            alignment: Alignment.center,
          ),
          Card(
            color: Colors.white.withOpacity(0.5),
            child: Container(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: const [
                  TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.password)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/world');
                    },
                    heroTag: 'btn3',
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 82, 83, 165),
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FloatingActionButton(
                    onPressed: () {},
                    heroTag: 'btn4',
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            child: Text(
                              'Cancel',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 82, 83, 165),
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(1),
//         image: DecorationImage(
//           colorFilter: ColorFilter.mode(
//               Color.fromARGB(255, 247, 243, 243).withOpacity(1),
//               BlendMode.dstATop),
//           image: const AssetImage('assets/images/YoursWorld.gif'),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Column(
//         children: <Widget>[
//           Row(
//             children: const <Widget>[
//               Expanded(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 40.0),
//                   child: Text(
//                     "EMAIL",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.redAccent,
//                       fontSize: 15.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             width: MediaQuery.of(context).size.width,
//             margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
//             alignment: Alignment.center,
//             decoration: const BoxDecoration(
//               border: Border(
//                 bottom: BorderSide(
//                     color: Colors.redAccent,
//                     width: 0.5,
//                     style: BorderStyle.solid),
//               ),
//             ),
//             padding: const EdgeInsets.only(left: 0.0, right: 10.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: const <Widget>[
//                 Expanded(
//                   child: TextField(
//                     obscureText: true,
//                     textAlign: TextAlign.left,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'samarthagarwal@live.com',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Divider(
//             height: 24.0,
//           ),
//           Row(
//             children: const <Widget>[
//               Expanded(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 40.0),
//                   child: Text(
//                     "PASSWORD",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.redAccent,
//                       fontSize: 15.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             width: MediaQuery.of(context).size.width,
//             margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
//             alignment: Alignment.center,
//             decoration: const BoxDecoration(
//               border: Border(
//                 bottom: BorderSide(
//                     color: Colors.redAccent,
//                     width: 0.5,
//                     style: BorderStyle.solid),
//               ),
//             ),
//             padding: const EdgeInsets.only(left: 10.0, right: 10.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: const <Widget>[
//                 Expanded(
//                   child: TextField(
//                     obscureText: true,
//                     textAlign: TextAlign.left,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: '*********',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Divider(
//             height: 24.0,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(right: 20.0),
//                 child: TextButton(
//                   child: const Text(
//                     "Forgot Password?",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.redAccent,
//                       fontSize: 15.0,
//                     ),
//                     textAlign: TextAlign.end,
//                   ),
//                   onPressed: () => {},
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             width: MediaQuery.of(context).size.width,
//             margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
//             alignment: Alignment.center,
//             child: Row(
//               children: <Widget>[
//                 Expanded(
//                   child: FloatingActionButton(
//                     heroTag: 'btn3',
//                     shape: RoundedRectangleBorder(
//                       borderRadius: new BorderRadius.circular(30.0),
//                     ),
//                     backgroundColor: Colors.redAccent.withOpacity(0.5),
//                     onPressed: () => {},
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 20.0,
//                         horizontal: 20.0,
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: const <Widget>[
//                           Expanded(
//                             child: Text(
//                               "LOGIN",
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             width: MediaQuery.of(context).size.width,
//             margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
//             alignment: Alignment.center,
//             child: Row(
//               children: <Widget>[
//                 Expanded(
//                   child: Container(
//                     margin: const EdgeInsets.all(2.0),
//                     decoration: BoxDecoration(border: Border.all(width: 0.0)),
//                   ),
//                 ),
//                 const Text(
//                   "OR CONNECT WITH",
//                   style: TextStyle(
//                     color: Colors.grey,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     margin: const EdgeInsets.all(8.0),
//                     decoration: BoxDecoration(border: Border.all(width: 0.25)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
}
