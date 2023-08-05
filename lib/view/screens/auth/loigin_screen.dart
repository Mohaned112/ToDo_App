import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app_api/view/components/widgets/elevated_button.dart';
import 'package:todo_app_api/view/components/widgets/text_costume.dart';
import 'package:todo_app_api/view/components/widgets/text_form_field_costume.dart';
import 'package:todo_app_api/view_model/utils/app_assets.dart';

class LoginScreen extends StatelessWidget {
 const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0.sp),
          child: Form(

            child: Column(children: [
              Image.asset(
                AppAssets.logoIcon,
                height: 150.h,
              ),
              SizedBox(
                height: 10.h,
              ),
              const TextCustom(
                text: 'Login',
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormFieldCustom(
                 'Email',
                keyboardType: TextInputType.emailAddress,
               validator: (String? value){
                  if((value?? '').isEmpty){
                    return 'Email is required';
                  }else if(RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value ??'')) {
                    return 'Email is valid';
                  }

                  return null;
               }, labelText: 'Email',
              ),
              SizedBox(height: 10.h,),
              TextFormFieldCustom(
                'Password',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                validator: (String? value){
                  if((value?? '').isEmpty){
                    return 'Password is required';
                  }else if(value!.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  else if(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$',).hasMatch(value??'')){

                  }

                  return null;
                }, labelText: 'Password',
              ),
              SizedBox(height: 10,),

          ElevatedButtonCustom(

            onPressed: (){},
            text: 'Login',
          )

            ]),
          ),
        ),
      ),
    );
  }
}
