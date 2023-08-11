import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:hive_flutter/hive_flutter.dart';

import 'package:untitled1/Cubit/login_cubit.dart';
import 'package:untitled1/View/OnboardingScreen.dart';
import 'package:untitled1/features/Sign_up/SignUp.dart';
import 'package:untitled1/constants/constimage.dart';
import 'package:untitled1/features/Sign_up/cubit/createaccount_cubit.dart';

void main() async {
  runApp(const MyApp());
  await Hive.initFlutter();
  Hive.openBox(plant1);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateaccountCubit(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,

        home: Sign_UP(),
        // home: MyPlanetApp() ,
        //home: Sign_UP(),
      ),
    );
  }
}
