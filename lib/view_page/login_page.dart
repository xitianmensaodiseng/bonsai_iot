import 'package:bonsai_iot/logic/init_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('这是一个登录界面'),
            OutlinedButton(
                onPressed: () {
                  Get.offAndToNamed(UnitRouter.homePage);
                },
                child: const Text('确认登陆'))
          ],
        ),
      ),
    );
  }
}
