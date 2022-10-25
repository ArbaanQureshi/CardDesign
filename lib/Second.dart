import 'package:design/MyApp.dart';
import 'package:flutter/material.dart';

import 'MyAPPU.dart';
import 'Third.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
TabController tabController=TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(title: const Text('Tab Controller'),),
          body: SingleChildScrollView(
            child: Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                      const SizedBox(height: 50,),
                    Container(
                        // height: 50,
                      width: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Padding(padding: const EdgeInsets.all(5),
                          child: TabBar(
                            labelColor: Colors.blue,
                            unselectedLabelColor: Colors.red,
                            controller: tabController,
                              indicator: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              tabs:const [
                                Tab(child: Text('hello'),),
                                Tab(child: Text('hello'),),
                                Tab(child: Text('hello'),),
                              ]
                          ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child:TabBarView(
                          controller: tabController,
                          children: const [
                            MyApp(),
                            MyAPPUU(),
                            Third(),
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
