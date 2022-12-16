import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:quickdeliver/View/Screens/footer.dart';
import 'package:quickdeliver/View/Screens/mandob.dart';
import 'package:quickdeliver/View/Screens/orderScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 200,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "شحناتك مع وصلها توصلك اسرع",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromRGBO(216, 185, 25, 1)),
                ),
                SizedBox(
                  height: 20,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    width: 220,
                    child: Text(
                      // Align: Alignment.center
                      "نوصل لك شحنتك مع آقرب مسافر للمدينه اللي تبي توصل لها في وقت قياسي",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(216, 185, 25, 1)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'اشحن طلبك',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'اسعار تنافسيه',
                  style: TextStyle(
                      fontSize: 25, color: Color.fromRGBO(216, 185, 25, 1)),
                ),
                Image.asset(
                  'assets/images/bg.png',
                  width: 400,
                  height: 200,
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 200,
        ),
        Text(
          'كيف نستخدم وصلها؟',
          style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 200,
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/fast 1.png'),
                  Text('تواصل مع المسافر '),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/destination 1.png'),
                  Text("اشحن مع المسافر واضمن وصول لك بوقت قياسي"),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/travel 1.png'),
                  Text("اختر الوجهه التي تود ارسال شحنتك لها"),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                            // title: const Text("كيف اثق في المندوب؟"),
                            actions: [
                              Container(
                                height: 500,
                                width: 900,
                                child: MandobScreen(),
                              )
                            ]));
              },
              child: Container(
                width: 270,
                height: 254,
                color: Color.fromRGBO(216, 185, 25, 1),
                child: Column(children: [
                  SizedBox(height: 50),
                  Image.asset(
                    'assets/images/con2.png',
                    // width: 50,
                    // height: 50,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'اشحن طلبك',
                    style: TextStyle(fontSize: 25),
                  ),
                ]),
              ),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                            // title: const Text("كيف اثق في المندوب؟"),
                            actions: [
                              Container(
                                height: 500,
                                width: 900,
                                child: OrderScreen(),
                              )
                            ]));
              },
              child: Container(
                width: 270,
                height: 254,
                color: Color.fromRGBO(216, 185, 25, 1),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Image.asset(
                      'assets/images/con2.png',
                      // width: 50,
                      // height: 50,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'اشحن طلبك',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
                // width: 150,
                )
          ],
        ),
        FooterScreen(),
      ]),
    );
  }
}
