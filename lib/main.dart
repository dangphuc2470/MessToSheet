import 'package:flutter/material.dart';

import 'MyHomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  String name = 'Phúc Đặng';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color firstColor = Color.fromARGB(255, 159, 50, 255);
  Color secondColor = Color.fromARGB(255, 53, 103, 255);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 4,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 20,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back, color: firstColor),
                    )),
                IconButton(
                  onPressed: () {},
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      'assets/profile_picture.jpg',
                      fit: BoxFit.fill,
                      width: 35,
                      height: 35,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Hoạt động 5 phút trước',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 137, 137, 137)),
                    )
                  ],
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call_rounded, color: firstColor)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.video_call_rounded, color: firstColor)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.info_rounded, color: firstColor)),
              ],
            ),
          ),
        ),
        body: Center(child: MyHomeScreen()));
  }
}
