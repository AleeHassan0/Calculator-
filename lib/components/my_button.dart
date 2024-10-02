import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final String title;
  final Color kColor;
  final VoidCallback onPress;
  const MyButton({super.key,required this.title,this.kColor=const Color(0xffa5a5a5),required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kColor
            ),
            child: Center(
              child: Text(title,style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
          ),
        ),
      ),
    );
  }
}