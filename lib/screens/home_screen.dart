import 'package:flutter/material.dart';
import 'package:plu_codes_app/widgets/plu_codes_listview.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose the Produce',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          searchBar(),
          PLUCodesListView(),
        ],
      ),
    );
  }
}

Widget searchBar() => Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(
                    fontSize: 18.00,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                RotatedBox(
                  quarterTurns: 1,
                  child: IconButton(
                    icon: Icon(
                      Icons.horizontal_rule_rounded,
                      color: Colors.grey,
                    ),
                    onPressed: null,
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          )
        ],
      ),
    );
