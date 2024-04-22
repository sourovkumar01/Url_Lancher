import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:urllancher/path_provider.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const url="https://www.linkedin.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(onPressed: (){
                launch(url,forceWebView: true,enableJavaScript: true);
              },child: Text('GO'),),

            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PathProdider(title: 'PathProdider')));
            },child: Text('PathProdider'),),
          ],
        ),
      ),
    );
  }
}
