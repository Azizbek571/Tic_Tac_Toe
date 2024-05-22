import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import 'package:tic_tac_toe/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 120),
                  child: Container(
                    child: Text(
                      "TIC TAC TOE",
                      style: TextStyle(
                          fontSize: 30, color: Colors.white, letterSpacing: 3),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: AvatarGlow(
                      // glowBorderRadius: BorderRadius.zero,
                      duration: Duration(seconds: 2),
                      glowColor: Colors.white,
                      repeat: true,
                      startDelay: Duration(seconds: 1),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(style: BorderStyle.none),
                            shape: BoxShape.circle),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[900],
                          child: Container(
                            child: Image.asset(
                              'assets/images/tictactoe.png',
                              color: Colors.white,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          radius: 80,
                        ),
                      )),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(top: 80),
                child: Container(
                  child: Text(
                    "https://t.me/azizbek_6606",
                    style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Padding(padding: EdgeInsets.only(left: 40, right: 40, bottom: 60),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.white,
                    child: Center(child: Text("Play Game", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                    ),
                  ),
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
