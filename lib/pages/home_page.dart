import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('increment').tr(),
            MaterialButton(onPressed: (){
              setState(() {
                if(context.locale == const Locale('uz', 'UZ')) {
                  EasyLocalization.of(context)?.setLocale(const Locale('en','US'));
                  debugPrint(context.locale.toString());
                } else {
                  debugPrint(context.locale.toString());
                  EasyLocalization.of(context)?.setLocale(const Locale('uz','UZ'));
                }
              });
            }, color: Colors.green,)
          ],
        ),
      ),
    );
  }
}
