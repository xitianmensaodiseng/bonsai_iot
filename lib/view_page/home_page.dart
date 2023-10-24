import 'package:bonsai_iot/view_page/home_page2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            const SizedBox(
              height: 20,
              width: 3,
              child: LinearProgressIndicator(
                value: 1,
                minHeight: 10,
                // 设置进度条的高度
                color: Colors.cyanAccent,
                backgroundColor: Colors.grey,
                // 设置进度条背景色
                valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.cyanAccent), // 设置进度条颜色
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              '这里是用户的名字',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              width: 20,
            ),
            ClipOval(
              child: Container(
                  height: 20,
                  width: 20,
                  color: Colors.grey[200],
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
         const Padding(padding: EdgeInsets.only(left: 20,right: 20), child: HomePage2()),
      ],
    );
  }
}
