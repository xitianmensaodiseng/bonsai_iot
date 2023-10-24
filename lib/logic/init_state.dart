import 'package:bonsai_iot/view_page/login_page.dart';
import 'package:bonsai_iot/view_page/my_mine_page.dart';

import 'package:get/get.dart';


class UnitRouter {
  static final UnitRouter _routerSingleton = UnitRouter._internal();

  UnitRouter._internal();

  static UnitRouter getInstance() => _routerSingleton;

  static const String homePage = '/homePage';
  static const String myLoginPage = '/LoginPage';


  static List<GetPage> getPages = [
    GetPage(name: myLoginPage, page: () => const MyLoginPage()),
    GetPage(name: homePage, page: () => const MyHomePage()),
  ];
}
