import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../lang/helper_lang.dart';
import '../../style/Constant.dart';
import '../../style/custom-te.dart';
import '../../style/custom_button.dart';
import '../../style/custom_text.dart';
import '../../style/custom_text_field.dart';
import '../../widget-constant/constWidget.dart';
class ShowFreelance extends StatelessWidget {
  const ShowFreelance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    ScreenUtil.init(context, designSize: const Size(360, 690));
    Locale myLocale = Localizations.localeOf(context);
    TextEditingController name =  TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phoneNum = TextEditingController();
    TextEditingController msg = TextEditingController();
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection:Axis.vertical ,
          padding: EdgeInsets.all(screenSize.width*0.1),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
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
                onLongPress: ()=> Colors.white,
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: screenSize.width,
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
                width: screenSize.width,
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
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35,left: 20,right: 20),
                      width: screenSize.width,
                      height: 35.h,
                      child: OldCustomTextFormField(
                        hintTxt:getTranslated(context, 'Enter-Name') ,
                        keyboardType: TextInputType.text,
                        controller: name,
                        colorBorder: BasicColor,
                        onChange: (){
                          print('clickkkkkkkkkkkkk');
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
                      child: CustomButton(txt:getTranslated(context, 'send'),fontSize: 15.sp, colorTxt:Theme.of(context).textTheme.bodyText1?.color,
                        outLineBorder: false, colorButton: BasicColor,width:screenSize.width, high:35.h,
                        onPressed: (){
                          NormalNav(screen: const ShowFreelance() , ctx: context);
                        },
                      ),
                    ),


                  ],
                ),
              ),


            ],
          ),

        ),
      ),
    );
  }
}
