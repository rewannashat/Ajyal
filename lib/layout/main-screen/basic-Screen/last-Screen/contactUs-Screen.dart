mport 'dart:developer';

import 'package:ajyal/lang/helper_lang.dart';
import 'package:ajyal/style/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../style/custom-te.dart';
import '../../../../style/custom_button.dart';
import '../../../../style/custom_text.dart';
import '../../../../style/custom_text_field.dart';
import '../../../../widget-constant/constWidget.dart';
import '../../Home/HomeScreen.dart';
class contactUs extends StatelessWidget {
  const contactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    ScreenUtil.init(context, designSize: const Size(360, 690));
    PageController controller = new PageController();
    Locale myLocale = Localizations.localeOf(context);
    TextEditingController name =  TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phoneNum = TextEditingController();
    TextEditingController msg = TextEditingController();
    return Scaffold(
      body: ListView(
        scrollDirection:Axis.vertical ,
        padding: EdgeInsets.all(screenSize.width*0.1),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          CustomText(
            txt :getTranslated(context, 'contact_us'),
            color: BasicColor,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            fontfamily: 'Bree Serif',
            wordSpacing: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          GestureDetector(
           onTap: () => NormalNav(screen: HomeScreen() , ctx: context),
            onLongPress: ()=> Colors.white,
            child: Container(
              margin: EdgeInsets.all(20),
              width: 5.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: BasicColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home , color: Theme.of(context).iconTheme.color , size:18.sp),
                  SizedBox(width: 5.w,),
                  CustomText(
                    txt : getTranslated(context, 'Home'),
                    color: Theme.of(context).textTheme.bodyText1?.color,
                    fontSize: 15.sp,
                    fontfamily: 'Inter',
                    wordSpacing: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10,left: 20,right: 20),
            width: 5,
            height: screenSize.height,
            decoration: BoxDecoration(
              color: Color(0xffFAF9FF),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 35,left: 20,right: 20),
                  width: screenSize.width,
                  height: 35.h,
                  child: CustomTextFormField(
                    hintTxt:getTranslated(context, 'Enter-Name') ,
                    hintColor: Theme.of(context).textTheme.bodyText1?.color,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    controller: name,
                    enable: true,
                    onChange: (){
                      // print(name.text);
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35,left: 20,right: 20),
                  width: screenSize.width,
                  height: 35.h,
                  child: CustomTextFormField(
                    hintTxt:getTranslated(context, 'enter_email'),
                    hintColor: Theme.of(context).textTheme.bodyText1?.color,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    controller: email,
                    enable: true,
                    onChange: (){
                      // print(name.text);
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35,left: 20,right: 20),
                  width: screenSize.width,
                  height: 35.h,
                  child: CustomTextFormField(
                    hintTxt:getTranslated(context, 'enter_your_phone_number'),
                    hintColor: Theme.of(context).textTheme.bodyText1?.color,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    controller: phoneNum,
                    enable: true,
                    onChange: (){
                      // print(name.text);
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35,left: 20,right: 20),
                  width: screenSize.width,
                  height: 70.h,
                  child: CustomTextFormField(
                    hintTxt:getTranslated(context, 'Enter_msg'),
                    hintColor: Theme.of(context).textTheme.bodyText1?.color,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    controller: msg,
                    enable: true,
                    onChange: (){
                      // print(name.text);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
                  child: CustomButton(txt:getTranslated(context, 'send'),fontSize: 15.sp, colorTxt:Theme.of(context).textTheme.bodyText1?.color,
                    outLineBorder: false, colorButton: BasicColor,width:screenSize.width, high:35.h,onPressed: (){},
                     ),
                ),


              ],
            ),
          ),

        ],
      ),
    );
  }
}
