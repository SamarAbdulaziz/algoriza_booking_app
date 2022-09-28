import 'package:flutter/material.dart';

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);
  static const double _appBarBottomBtnPosition =
  24.0; //change this value to position your button vertically


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // SliverAppBar(
          //   title: Text(
          //     'Testing',
          //     style: TextStyle(color: Colors.red),
          //   ),
          // ),
          SliverAppBar(
            pinned: true,
            expandedHeight: 700.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              titlePadding: EdgeInsets.only(bottom: 25),
              title: Text('Title'),
              background: Image.asset(
                'assets/images/GetStarted.jpg',
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Transform.translate(
                offset: const Offset(0, _appBarBottomBtnPosition),
                child: ElevatedButton(
                  //shape: StadiumBorder(),
                  child: Text("Click Here"),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: _appBarBottomBtnPosition),
          ),
          SliverFixedExtentList(
    delegate: SliverChildBuilderDelegate(
            (_, int index) {
          return Container(
                padding: EdgeInsets.all(8),
                width: 100,
                child: Placeholder());
        },
        childCount: 0,
      ), itemExtent: 1,
            //extentlist
          ),
        ],
      ),
    );
  }
}
