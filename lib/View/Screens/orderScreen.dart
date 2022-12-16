import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String dropdownvalue = '١-٣ كيلو';

    var items = [
      '١-٣ كيلو',
      '٤-٧ كيلو',
      '٨-١١ كيلو',
      '١٢-١٥ كيلو',
      // 'Item 5',
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('ارسال الشحنه')],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('مدة التوصيل'),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: DropdownButton(
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        // setState(() {
                        dropdownvalue = newValue!;
                        // });
                      }),
                )
              ],
            ),
            Column(
              children: [
                Text('حجم الطرد'),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: DropdownButton(
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        // setState(() {
                        dropdownvalue = newValue!;
                        // });
                      }),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('مدة التوصيل'),
                DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // setState(() {
                      dropdownvalue = newValue!;
                      // });
                    })
              ],
            ),
            Column(
              children: [
                Text('حجم الطرد'),
                DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // setState(() {
                      dropdownvalue = newValue!;
                      // });
                    })
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Text('ملاحظات'),
                SizedBox(
                  // <-- SEE HERE
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
