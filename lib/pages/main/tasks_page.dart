import 'package:flutter/material.dart';

import '../../constants.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  TasksPageState createState() => TasksPageState();
}

class TasksPageState extends State<TasksPage> {
  var top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 140.0,
              floating: false,
              pinned: true,
              leading: const SizedBox(),
              backgroundColor: Colors.blueAccent,
              flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                top = constraints.biggest.height;
                return FlexibleSpaceBar(
                  centerTitle: true,
                  title: AnimatedOpacity(
                      duration: const Duration(milliseconds: 300),
                      opacity: 1.0,
                      child: Text(
                        'Tasks | P-42',
                        style: TextStyle(
                            fontSize: top < 110 ? top / 4.5 : 109 / 4.5),
                      )),
                  background: Image.asset(
                    'assets/images/home_bg.png',
                    fit: BoxFit.cover,
                  ),
                );
              }),
            ),
          ];
        },
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(
                  bottom: kDefaultPadding,
                  right: kDefaultPadding,
                  left: kDefaultPadding,
                ),
                padding: EdgeInsets.all(kDefaultPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(kDefaultRadius),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width -
                          kDefaultPadding * 7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'TASdasdh asdh aisd iajd asasdasda asd asd asd ad ada da sdas das as d',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: kDefaultPadding / 2),
                          const Text(
                            'TASdasdh asdh aisd iajd asasdasda asd asd asd ad ada da sdas das as d',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: kDefaultPadding / 2),
                          const Text(
                            '     TASdasdh asdh aisd iajd as asda sd ad asd d',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 28,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
