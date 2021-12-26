import 'package:flutter/material.dart';
import 'package:yili_music_app/api/hello.dart';
import 'package:yili_music_app/theme.dart';
import 'package:yili_music_app/widget/login_form.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  final ButtonStyle buttonStyle =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: primary,
            padding: const EdgeInsets.only(top: 126),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              child: Column(
                children: <Widget>[
                  TabBar(
                    controller: _tabController,
                    labelColor: primary,
                    unselectedLabelColor: unselectedLabelColor,
                    tabs: const <Widget>[
                      Tab(
                        text: "登录",
                      ),
                      Tab(
                        text: "注册",
                      ),
                    ],
                  ),
                  Flexible(
                    flex: 1,
                      child: TabBarView(
                        controller: _tabController,
                        children: const <Widget>[
                          LoginForm(),
                          Center(
                            child: Text("这是注册"),
                          ),
                    ],
                  ))
                ],
              ),
            )));
  }
}
