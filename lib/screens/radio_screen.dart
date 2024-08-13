import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(height: 180,),
            Container(
                child: Image.asset("assets/iamges/WhatsApp_Image_2024-07-30_at_2.34.19_AM-removebg-preview.png",height: 200,width: 500,)
            ),
            SizedBox(height: 50,),
            Text("إذاعة القرآن الكريم",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.white),),
            SizedBox(height: 40,),
            Image.asset("assets/iamges/Group 5.png")
          ],
        )
      ),
    );
  }
}
