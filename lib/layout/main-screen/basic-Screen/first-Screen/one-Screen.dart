import 'package:ajyal/lang/helper_lang.dart';
import 'package:ajyal/style/Constant.dart';
import 'package:flutter/material.dart';
import '../../../../style/custom_text.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         ClipOval(
           child: SizedBox.fromSize(
             size: Size.fromRadius(130), // Image radius
             child: Image.asset('assets/images/first.jpg'),
           ),
         ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              txt: getTranslated(context, 'dev_company'),
              color: Theme.of(context).textTheme.bodyText1?.color,
              fontSize: 30,
              fontfamily: 'Bree Serif',
              wordSpacing: 1,
            ),
            CustomText(
              txt: getTranslated(context, 'Ajyal_Association'),
              color: BasicColor,
              fontSize: 30,
              fontfamily: 'Bree Serif',
              wordSpacing: 1,
            ),
          ],
        )



        ],
     ),
    );
  }
}
