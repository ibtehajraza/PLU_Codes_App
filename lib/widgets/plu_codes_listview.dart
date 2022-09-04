import 'package:flutter/material.dart';
import 'package:plu_codes_app/models/data_module.dart';
import 'package:plu_codes_app/models/plu_model.dart';

class PLUCodesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //height: 300.00,
        color: Colors.white,

        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.6,
            ),
            itemCount: pluCodes.length, //.toDouble() ~/ 3,
            itemBuilder: (BuildContext context, int index) {
              return buildGrid(index);
            }),
      ),
    );
  }

  Widget buildGrid(int index) => Container(
        padding: EdgeInsets.all(6),
        child: GridTile(
          child: Image.asset(
            pluCodes[index].imageUrl,
            width: 80.0,
            height: 80.0,
          ),
          footer: Column(
            children: [
              Text(
                pluCodes[index].name,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                pluCodes[index].pluCode,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      );
}
