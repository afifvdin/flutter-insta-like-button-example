import 'package:flutter/material.dart';
import 'package:flutter_instagram_like_example/utils/systemUI.dart';
import 'package:insta_like_button/insta_like_button.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> urls = [
    'https://images.unsplash.com/photo-1635003913011-95971abba560?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=756&q=80',
    'https://images.unsplash.com/photo-1641520816036-441dfde0f79c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80',
    'https://images.unsplash.com/photo-1634195130430-2be61200b66a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    'https://images.unsplash.com/photo-1634696684126-462b1a767e22?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=566&q=80',
    'https://images.unsplash.com/photo-1646897981712-6f82e5c112bd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
  ];

  //
  // @afifcodes
  // afifcodes.vercel.app/flutter
  //

  @override
  Widget build(BuildContext context) {
    systemUI();
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: PageView.builder(
        itemCount: urls.length,
        itemBuilder: (context, index) {
          return InstaLikeButton(
              image: NetworkImage(urls[index]),
              imageBoxfit: BoxFit.cover,
              iconColor: Colors.red,
              onChanged: () {});
        },
      ),
    );
  }
}
