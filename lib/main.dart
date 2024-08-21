import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//메인 페이지
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('앱임'),
          centerTitle: false,
          titleTextStyle: TextStyle(
            fontSize: 20, color: Colors.white
          ),
          backgroundColor: Colors.blue,
        ), //상단에 들어갈 위젯
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity, height: 150,
            // margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
            // padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.purple,
                border: Border.all(color: Colors.black)

            ),
            child: Text('안녀엉'),
          ),
        ), //중단에 들어갈 위젯

        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
              )
            ]
          ),

        child: BottomAppBar(
          color: Colors.white,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const[
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          ),
        ),
        ),
      );
  }
}
