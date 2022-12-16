import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return appbar;
  }
}

var textStyling = TextStyle(color: Colors.white);
var Stying = ButtonStyle(
    backgroundColor:
        MaterialStatePropertyAll<Color>(Color.fromRGBO(216, 185, 25, 1)));
final appbar = AppBar(
  leading: Icon(Icons.menu),
  title: Container(child: Row()),
  actions: [
    Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: TextButton(
          style: ButtonStyle(),
          onPressed: () {},
          child: Text(
            'حساب جديد',
            style: TextStyle(fontSize: 19, color: Colors.white),
          ),
        ),
      ),
    ),
    Center(
        child: Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
            backgroundColor: Color.fromARGB(255, 235, 228, 10)),
        onPressed: () {},
        child: Text(
          'تسجيل الدخول',
          style: TextStyle(
            fontSize: 19,
          ),
        ),
      ),
    )),
    Center(
        child: Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: Text(
        'تواصل معنا',
        style: TextStyle(fontSize: 19),
      ),
    )),
    Center(
        child: Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: Text(
        'الاسئله',
        style: TextStyle(fontSize: 19),
      ),
    )),
    Center(
        child: Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: Text(
        'الطلبات',
        style: TextStyle(fontSize: 19),
      ),
    )),
    Center(
        child: Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: Text(
        'الرئيسيه',
        style: TextStyle(fontSize: 19),
      ),
    )),
    Center(
        child: Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: Text(
        'وصلها',
        style: TextStyle(fontSize: 29),
      ),
    )),
  ],
  backgroundColor: Color.fromRGBO(61, 57, 57, 1),
);
