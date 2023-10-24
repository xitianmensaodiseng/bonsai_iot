import 'package:bonsai_iot/view_page/often_page.dart';
import 'package:flutter/material.dart';

import 'default_page.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePageState2();
}

class _HomePageState2 extends State<HomePage2> {
  late PageController _pageController;
  final _pages = <Widget>[];

  int _currentPosition = 0;

  @override
  void initState() {
    super.initState();
    _pages.clear();
    _pages.add(const OftenPage());
    _pages.add(const DefaultPage());
    _pageController =
        PageController(initialPage: _currentPosition, keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _currentPosition = 0;
                  _pageController.animateToPage(
                    _currentPosition,
                    duration: const Duration(milliseconds: 500), // 控制动画时长
                    curve: Curves.ease, // 控制动画曲线
                  );
                });
              },
              child: Text(
                '常用',
                style: TextStyle(
                    fontSize: 20,
                    color: _currentPosition == 0
                        ? Colors.black
                        : Colors.black12),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _currentPosition = 1;
                  _pageController.animateToPage(
                    _currentPosition,
                    duration: const Duration(milliseconds: 500), // 控制动画时长
                    curve: Curves.ease, // 控制动画曲线
                  );
                });
              },
              child: Text(
                '默认房间',
                style: TextStyle(
                  fontSize: 20,
                  color: _currentPosition == 1 ? Colors.black : Colors.black12,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 540,
          child: PageView(
            controller: _pageController,
            pageSnapping: true,
            onPageChanged:(int page) {
              // 页面切换时触发的回调
              setState(() {
                _currentPosition = page; // 更新当前页面的索引
              });
            },
            children: _pages,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() async {
    super.dispose();
    _pages.clear();
    _pageController.dispose();
  }
}
