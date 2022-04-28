// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hook_up_rent/pages/home/index.dart';
import 'package:hook_up_rent/pages/login.dart';
import 'package:hook_up_rent/pages/register.dart';
import 'package:hook_up_rent/pages/room_add/index.dart';
import 'package:hook_up_rent/pages/room_detail/index.dart';
import 'package:hook_up_rent/pages/room_manage/index.dart';
import 'package:hook_up_rent/pages/setting.dart';
import 'package:hook_up_rent/widgets/page_content.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'login': (context) => const LoginPage(),
        'register': (context) => const RegisterPage(),
        'setting': ((context) => const SettingPage()),
        'search': (context) => const PageContent(name: '搜索'),
        'room_manage': (context) => const RoomManagePage(),
        'room_add': (context) => const RoomAddPage(),
        'room_detail': (context) => const RoomDetailPage(),
        'test': (context) => const PageContent(name: '开发中...'),
      },
    );
  }
}
