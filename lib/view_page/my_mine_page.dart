import 'package:bonsai_iot/view_page/home_page.dart';
import 'package:bonsai_iot/view_page/my_settings_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pages = <Widget>[];
  late PageController _pageController;
  int _currentPosition = 0;

  @override
  void initState() {
    super.initState();
    _pages.clear();
    _pages.add(const HomePage());
    _pages.add(const MySetting());

    _pageController =
        PageController(initialPage: _currentPosition, keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        pageSnapping: true,
        children: _pages,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _currentPosition = 0;
                    _pageController.jumpToPage(_currentPosition);
                  });
                },
                icon:  Icon(
                  Icons.home,
                  color: _currentPosition == 0 ? Colors.cyanAccent : Colors.black12,
                ),
              highlightColor: Colors.cyanAccent, // 设置高亮颜色为透明，以显示点击效果
            ),
            const SizedBox(), //中间位置空出
            IconButton(
                onPressed: () {
                  setState(() {
                    _currentPosition = 1;
                    _pageController.jumpToPage(_currentPosition);
                  });
                },
                icon: Icon(
                  Icons.settings_outlined,
                  color: _currentPosition == 1 ? Colors.cyanAccent:Colors.black12,
                ),
              highlightColor: Colors.cyanAccent, // 设置高亮颜色为透明，以显示点击效果
               ),
          ], //均分底部导航栏横向空间
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          //悬浮按钮
          child: const Icon(Icons.add),
          onPressed: () {}),
    );
  }

  @override
  void dispose() async {
    super.dispose();
    _pages.clear();
    _pageController.dispose();
  }
}
