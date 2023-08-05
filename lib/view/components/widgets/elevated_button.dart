import 'package:flutter/material.dart';
import 'package:todo_app_api/view/components/widgets/text_costume.dart';

class ElevatedButtonCustom extends StatelessWidget{

  final void Function()? onPressed;
  final String text;
  final double width;

  const ElevatedButtonCustom({required this.onPressed, required this.text,this.width = 300, Key? key}) : super(key: key);


@override
Widget build(BuildContext context){
  return SizedBox(

    width: width,
    child: ElevatedButton(

    onPressed: onPressed,
    child: TextCustom(text: text,),

    ),
  );

}

}