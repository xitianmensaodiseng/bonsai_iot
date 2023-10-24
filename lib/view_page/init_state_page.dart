import 'package:bonsai_iot/logic/init_state.dart';
import 'package:bonsai_iot/other/color_until.dart';

import 'package:flutter/material.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';






class InitStatePage extends StatefulWidget {
  const InitStatePage({super.key});

  @override
  State<InitStatePage> createState() => _InitStatePageState();
}

class _InitStatePageState extends State<InitStatePage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        localizationsDelegates: const [
          // RefreshLocalizations.delegate,
          // GlobalMaterialLocalizations.delegate,
          // GlobalWidgetsLocalizations.delegate,
          // GlobalCupertinoLocalizations.delegate,
        ],
        // supportedLocales: const [
        //   Locale('zh', 'CN'), //设置语言为中文
        // ],
        // navigatorObservers: [
        // SentryNavigatorObserver(),
        // ],
        debugShowCheckedModeBanner: false,
        // builder: EasyLoading.init(),
        theme: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            scaffoldBackgroundColor: const Color(0xffffffff),
            appBarTheme: const AppBarTheme(
                backgroundColor: ColorUnit.blackTextColor),
            primaryColor: ColorUnit.accentBlueColor //主题色
        ),
        initialRoute: UnitRouter.myLoginPage,
        getPages: UnitRouter.getPages);
  }
}
