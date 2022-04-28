import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('注册')),
      body: SafeArea(
        minimum: const EdgeInsets.all(30),
        child: ListView(children: [
          const TextField(
            decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          const TextField(
            decoration: InputDecoration(
              labelText: '密码',
              hintText: '请输入密码',
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          const TextField(
            decoration: InputDecoration(
              labelText: '确认密码',
              hintText: '请输入密码',
            ),
          ),
          const Padding(padding: EdgeInsets.all(20)),
          ElevatedButton(
              onPressed: () {
                // Todo(),
              },
              child: const Text('注册')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('已有账号，'),
              TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, 'login');
                    Navigator.pushReplacementNamed(context, 'login');
                  },
                  child: const Text('去登录~'))
            ],
          ),
        ]),
      ),
    );
  }
}
