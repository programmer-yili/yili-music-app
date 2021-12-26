import 'package:flutter/material.dart';
import 'package:yili_music_app/theme.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "登录",
            style: TextStyle(
                fontSize: 24,
                letterSpacing: 0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF002251),
            ),
          ),
          const SizedBox(height: 7,),
          const Text("欢迎来到原力音乐", style: TextStyle(
            fontSize: 14,
            color: Color(0xFF7A869A),
            letterSpacing: 0,
            fontWeight: FontWeight.w400
          )),
          const SizedBox(height: 35,),
          const TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '用户名',
            ),
          ),
          const SizedBox(height: 25,),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '密码',
            ),
          ),
          const SizedBox(height: 24,),
          const Text("忘记密码？", style: TextStyle(
            fontSize: 13,
            color: Color(0xFF0041C4)
          ),),
          const SizedBox(height: 24,),
          FractionallySizedBox(
            widthFactor: 1,
              child: ElevatedButton(
                onPressed: (){},
                child: const Text("登录"),
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text("没有账号？", style: TextStyle(),),
              Text("立即注册")
            ],
          )
        ],
      ),
    );
  }
}
