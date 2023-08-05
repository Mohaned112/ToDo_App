 import 'package:flutter/material.dart';
import 'package:todo_app_api/view/screens/auth/loigin_screen.dart';
import 'package:todo_app_api/view_model/utils/app_assets.dart';
import 'package:todo_app_api/view_model/utils/navigations.dart';

class SplashScreen extends StatefulWidget {
   const SplashScreen({super.key});
 
   @override
   State<SplashScreen> createState() => _SplashScreenState();
 }
 
 class _SplashScreenState extends State<SplashScreen> {
   @override
   void initState(){
     Future.delayed(Duration(seconds: 2,), () {
       Navigation.pushAndRemove(context, LoginScreen());
     });
   }




   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: Image.asset('assets/logo.png.png'),
       ),
     );
   }
 }
 