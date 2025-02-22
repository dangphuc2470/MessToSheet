import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  Color purple = Color.fromARGB(255, 159, 50, 255);
  Color blue = Color.fromARGB(255, 53, 103, 255);
  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color error;
  late Color primaryContainer;
  late Color secondaryContainer;
  late Color tertiaryContainer;
  late Color errorContainer;

  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final List<String> messages = [
    'Hello',
    'Hi, how are you?',
    'I am fine, thank you. And you?',
    'I am good too. What are you doing?',
    'Just chatting with you.',
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      systemNavigationBarIconBrightness:
          Brightness.dark, // navigation bar icons' color
    ));
    primaryColor = Theme.of(context).colorScheme.primary;
    secondaryColor = Theme.of(context).colorScheme.secondary;
    tertiaryColor = Theme.of(context).colorScheme.tertiary;
    error = Theme.of(context).colorScheme.error;
    primaryContainer = Theme.of(context).colorScheme.primaryContainer;
    secondaryContainer = Theme.of(context).colorScheme.secondaryContainer;
    tertiaryContainer = Theme.of(context).colorScheme.tertiaryContainer;
    errorContainer = Theme.of(context).colorScheme.errorContainer;

    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: index % 2 == 0 ? Colors.blue : Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  messages[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/more_send.svg', fit: BoxFit.fill,
                        )),

                  ),
                  Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/camera.svg', fit: BoxFit.fill,
                        ),
                      )),
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/picture.svg', fit: BoxFit.fill,
                        )),
                  ),
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/voice.svg', fit: BoxFit.fill,
                        )),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          padding: EdgeInsets.only(left: 20, bottom: 4),
                          decoration: BoxDecoration(
                            color: secondaryContainer, // background color
                            borderRadius:
                                BorderRadius.circular(20), // rounded border
                          ),
                          child: TextField(
                            controller: _controller,
                            focusNode: _focusNode,
                            decoration: InputDecoration(
                              border: InputBorder.none, // no border
                              hintText: "Nhắn tin",
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          top: 0,
                          child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/emoji.svg',
                              )),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: _focusNode.hasFocus
                          ? SvgPicture.asset(
                        'assets/like.svg',
                      )
                          : Icon(Icons.send_rounded, color: blue)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
