import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 48.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: double.infinity,
            height: 550,
            color: Color.fromRGBO(61, 57, 57, 1),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 70,
                    width: 800,
                    // color: Colors.white,
                    child: Row(
                      children: [Text('الاسئلة الاكثر شيوعا')],
                    ),
                  ),
                ),
                // Row(),
                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Container(
                    height: 70,
                    width: 500,
                    // color: Colors.white,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('كيف اثق في المندوب '),
                        IconButton(
                            icon: Icon(Icons.keyboard_arrow_down),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                      title: const Text("كيف اثق في المندوب؟"),
                                      content: const Text(
                                          "والله مادري بس خليها على الله"),
                                      actions: []));
                            }),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Container(
                    height: 70,
                    width: 500,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    // color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('كيف اضمن وصول الطلب'),
                        IconButton(
                            icon: Icon(Icons.keyboard_arrow_down),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ),
                // Row()
                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 70,
                    width: 500,
                    // color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('كم مدة التوصيل'),
                        IconButton(
                            icon: Icon(Icons.keyboard_arrow_down),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ),
                // Row()
                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Container(
                    height: 70,
                    width: 500,
                    // color: Colors.white,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('كيف اضمن وصول الطلب'),
                        IconButton(
                            icon: Icon(Icons.keyboard_arrow_down),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ),
                // Container(
                //   height: 600,
                //   color: Colors.grey,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
