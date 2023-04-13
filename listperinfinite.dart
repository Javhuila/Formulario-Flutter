import 'package:flutter/material.dart';
import '../../../../../../db/databaseper.dart';

class ListPerInfinite extends StatelessWidget {
  const ListPerInfinite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataBasePer.notes();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Card(
              child: Row(
                children: [
                  Text('roberto'),
                  Text('gonzales'),
                  Text('20'),
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  Text('ernesto'),
                  Text('ramirez'),
                  Text('25'),
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  Text('Jose'),
                  Text('humberto'),
                  Text('20'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
