import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: RefreshIndicator(
            displacement: 200,
            onRefresh: (){
              return Future(() => Container());
            },
            child: Container(
              width: 330,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(96, 96, 111, 6),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(1,2),
                    )
                  ],
                  border: Border.all(
                    color: Color.fromARGB(245, 188, 40, 1),
                  )),
              child: Stack(
                clipBehavior: Clip.none ,
                children: [
                  Container(
                  ),
                  Positioned(
                    // top: -26,
                    left: 16,
                    bottom: 16,
                    width: 60,
                    height: 60,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: const Color.fromARGB(245, 188, 40, 1),)
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/asstes/gg.jpg',),radius: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -12,
                    left: 90,
                    width: 183,
                    height: 22,
                    child:Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: const Color.fromARGB(245, 188, 40, 1),)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(100)),
                          ),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(100)),
                          ),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(100)),
                          ),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(100)),
                          ),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(100)),
                          ),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(100)),
                          ),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(100)),
                          ),
                          const Text('30/240',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                      top: 23,
                      left: 92,
                      child: Text('Sadie Sink',style: TextStyle(fontSize: 20),))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}