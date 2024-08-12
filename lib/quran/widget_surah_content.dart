import 'package:flutter/material.dart';

class WidgetSurahContent extends StatelessWidget {
  int index;
  String content;

  WidgetSurahContent(this.content,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Text("$content {${index + 1}}",
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25,fontFamily:"Messiri"
        ),
      ),
    );
  }
}


