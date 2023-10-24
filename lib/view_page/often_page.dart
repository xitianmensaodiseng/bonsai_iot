import 'package:flutter/material.dart';

class OftenPage extends StatefulWidget {
  const OftenPage({super.key});

  @override
  State<OftenPage> createState() => _OftenPageState();
}

class _OftenPageState extends State<OftenPage> {
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 300,
          height: 300,
          color: Colors.cyanAccent,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                '智慧生活',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '连接万物，只为懂你',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 80,
              ),
              OutlinedButton(
                child: const Text(
              '添加设备',
              style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: (){
                  //这里写添加设备页面
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
