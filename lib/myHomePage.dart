import './bigText.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool bookMarked = false;

  @override
  void reverseBookmark() {
    setState(() {
      if (bookMarked == false) {
        bookMarked = !bookMarked;
        _controller.forward();
      } else {
        bookMarked = !bookMarked;
        _controller.reverse();
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), // 1 means 1 secoond
    );
  }

  @override
  //To clean eveything
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(bookMarked);
    print('Rebuild');
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: reverseBookmark,
              child: Lottie.network(
                  controller: _controller,
                  "https://assets4.lottiefiles.com/datafiles/SkdS7QDyJTKTdwA/data.json"),
            ),
            BigText(
              text: (bookMarked) ? 'BookMarked' : 'Not - BookMarked',
            ),
          ],
        ),
      ),
    );
  }
}
