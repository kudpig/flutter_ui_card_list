import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column( // 縦要素
        children: [
          Container(
            height: 230,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50)
              ),
              color: Color(0xFF363f93),
              boxShadow: [
                BoxShadow(
                  // TODO
                  // 影つける
                )
              ]
            ),
            child: Stack( // コンテナの上に子要素として載せるイメージ
              children: [
                Positioned(
                    top: 80,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        )
                      ),
                    )
                ),
                const Positioned(
                    top: 115,
                    left: 20,
                    child: Text('Your Books', style: TextStyle(fontSize: 30, color: Color(0xFF363f93))))
              ],
            ),
          ),
          SizedBox(height: height*0.05,),
          Container(
            height: 230,
            child: Stack(
              children: [
                Positioned(
                    top: 35,
                    left: 20,
                    child: Material(

                      child: Container(
                        height: 180,
                        width: width*0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: const Offset(-10.0, 10.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0
                            ),
                          ],
                        ),
                      ),

                )),
                Positioned(
                  top: 0,
                    left: 30,
                    child: Card(
                      elevation: 10.0,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF363f93),
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('img/101.png'),
                          )
                        ),
                      ),
                    )
                ),
                Positioned(
                    top: 60,
                    left: 200,
                    child: Container(
                      height: 150,
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Big Miracles', style: TextStyle(fontSize: 20, color: Color(0xFF363f93), fontWeight: FontWeight.bold),),
                          Text('Dylan Ahmed', style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),
                          Divider(color: Colors.black),
                          Text('Its larger than life ', style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                )

              ],
            ),
          ),

          Expanded(
              child: MediaQuery.removePadding(context: context, removeTop: true,
              child: ListView(
                children: [
                  Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 25),
                  height: 200,
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFf363f93),
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(80.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF363f93).withOpacity(0.3),
                            offset: const Offset(-10.0, 0.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0),
                      ],
                    ),
                    padding: const EdgeInsets.only(left: 32, top: 50.0, bottom: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text("THE BEST", style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Your life starts here",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                          ),
                      ]
                    ),
                  ),
                ),
                  Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 25),
                  height: 200,
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFf363f93),
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(80.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF363f93).withOpacity(0.3),
                            offset: const Offset(-10.0, 0.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0),
                      ],
                    ),
                    padding: const EdgeInsets.only(left: 32, top: 50.0, bottom: 50),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text("THE BEST", style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Your life starts here",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ]
                    ),
                  ),
                ),
              ],
            ))
          )
        ],
      )
    );
  }
}
