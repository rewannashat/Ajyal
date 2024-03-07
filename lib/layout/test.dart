import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../lang/helper_lang.dart';
import '../style/custom-te.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 35,left: 20,right: 20),
        width: screenSize.width,
        child: CustomTextFormField(
          hintTxt:getTranslated(context, 'enter_your_phone_number'),
          hintColor: Theme.of(context).textTheme.bodyText1?.color,
          obscureText: false,
          keyboardType: TextInputType.text,
          enable: true,
          onChange: (){
            // print(name.text);
          },
        ),
      ),
    );
  }
}
