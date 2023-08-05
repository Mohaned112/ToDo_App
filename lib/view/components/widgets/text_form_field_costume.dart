import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String? labelText;
  final double? radius;
  final bool? obSecure;


  final String? Function(String?)? validator;

  final double? bottomPadding;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;



  const TextFormFieldCustom( String , {
    required this.labelText,
    this.radius=12,
    this.obSecure=false,
    required this.validator,

    this.bottomPadding=15,
    this.textInputAction=TextInputAction.next,
    required this.keyboardType,

    Key? key,
    
  })

  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding:
    EdgeInsets.only(

    ),
      child: TextFormField(

        obscureText: true,
        validator: validator,

        textInputAction: textInputAction,
        keyboardType: keyboardType,
        style: const TextStyle(
          color: Colors.white,
        ),

        decoration: InputDecoration(
          focusColor: Colors.white,
          labelStyle: TextStyle(
            color: Colors.black,
          ),

          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius!.r),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 1.w,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius!.r),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 1.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius!.r),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2.w,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius!.r),
            borderSide: BorderSide(
              color: Colors.yellow,
              width: 1.w,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius!.r),
            borderSide: BorderSide(
              color: Colors.yellow,
              width: 2.w,
            ),
          ),

        ),
      ),
    );
  }
}




