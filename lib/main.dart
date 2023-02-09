import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_component/radio_button.dart';
import 'package:my_component/textfield.dart';

import 'checkbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _value = false;
  int radio = 1;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // FCheckbox(
                //     value: _value,
                //     size: FCheckboxSize.size48.copyWith(size: 10),
                //     onChanged: (v) {
                //       setState(() {
                //         _value = !_value;
                //       });
                //     }),
                // FRadio(
                //     value: 1,
                //     groupValue: radio,
                //     size: FRadioSize.size24.copyWith(outterRadius: 1),
                //     onChanged: (vl) {
                //       radio = 1;
                //       setState(() {});
                //     }),
                // FRadio(
                //     // enable: false,
                //     value: 2,
                //     groupValue: radio,
                //     onChanged: (vl) {
                //       radio = 2;
                //       setState(() {});
                //     }),
                FTextFormField(
                  onTap: () {
                    // print('object');
                  },
                  size: FInputSize.size64,

                  borderColor: Colors.green,
                  focusColor: Colors.black,
                  children: const [
                    Icon(
                      Icons.menu,
                      color: Colors.red,
                      size: 16,
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.red,
                      size: 16,
                    ),
                  ],
                  controller: controller,
                  errorText: '1231',
                  // suffixIcon: const Icon(
                  //   Icons.search,
                  //   color: Color(0xff6E87AA),
                  //   size: 16,
                  // ),
                  // suffixIcon: CupertinoButton(
                  //   disabledColor: Colors.transparent,
                  //   onPressed: () {
                  //     print('3123');
                  //   },
                  //   minSize: 40,
                  //   color: Colors.deepOrange,
                  //   padding: EdgeInsets.zero,
                  //   borderRadius: BorderRadius.zero,
                  //   child: Container(
                  //       decoration: BoxDecoration(
                  //         color: Colors.transparent,
                  //         borderRadius: BorderRadius.circular(40 / 2),
                  //       ),
                  //       child: Text('1231232312')),
                  // ),
                  // buildCounter: (_, {int currentLength, bool isFocused, int maxLength}) => Padding(
                  //   padding: EdgeInsets.only(right: isFocused ? 0 : 32),
                  //   child: Text(
                  //     '$currentLength/$maxLength',
                  //     style: FTypoSkin.subtitle2.copyWith(color: FColorSkin.placeHolder),
                  //   ),
                  // ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
