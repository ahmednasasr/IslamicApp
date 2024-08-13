import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:islamicapp/core/widgets/bg_screen.dart';

class SettingsScreen extends StatelessWidget {
   SettingsScreen({super.key});
   static const String routename="settingscreen";


  @override
  Widget build(BuildContext context) {
    return BgScreen(
     child:Scaffold(
     body:SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 200),
            Padding(
                padding: EdgeInsets.all(8.0),
                child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(width: 20),
                  Text(
                    "language".tr(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<Locale>(
                    value: context.locale,
                    onChanged: (Locale? newLocale) {
                      if (newLocale != null) {
                        context.setLocale(newLocale);
                      }
                    },
                    items: [
                      DropdownMenuItem(
                        value: Locale('en'),
                        child: Text("english".tr()),
                      ),
                      DropdownMenuItem(
                        value: Locale('ar'),
                        child: Text("arabic".tr()),
                      ),
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),

                ]))
          ])), // Close SingleChildScrollView
    )
    );
  }
}