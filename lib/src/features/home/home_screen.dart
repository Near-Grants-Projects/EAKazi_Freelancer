import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/app_constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EaKaziScaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          children: [
            Row(
              children: [
                //TODO: TURN TO TEMPLATE TEXT
                Text(
                  "Hi, Mary",
                  style: Theme.of(context).textTheme.headline5,
                ),
                Spacer(),

                IconButton(
                  onPressed: () => null,
                  icon: Icon(Icons.more_horiz),
                ),
              ],
            )
          
          ],
        ),
      ),
    );
  }
}
