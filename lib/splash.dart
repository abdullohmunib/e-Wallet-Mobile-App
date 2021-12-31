import 'package:ewallet_app/screens/auth/login.dart';
import 'package:ewallet_app/screens/home/home.dart';
import 'package:ewallet_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _checkUserSementara(false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: wAppLoading(),
    );
  }

  void _checkUserSementara(bool user) async {
    await Future.delayed(Duration(seconds: 2));
    //pushReplacement tidak ada tombol navigasi back, jika push saja, maka ada navigasi backnya
    //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    //jika user ada, maka ke Home(), jika user kosong, maka ke Login()
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => user ? Home() : Login()));
  }
}
