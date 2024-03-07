import 'dart:developer';

import 'package:ajyal/model/landingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../../lang/helper_lang.dart';
import '../../../../style/custom_text.dart';
import '../../../../style/drawer.dart';
import '../../../../widget-constant/constWidget.dart';
import '../../../../widget-constant/dimoned-shape.dart';
import 'LandingCubit.dart';
import 'LandingState.dart';
class WhoScreen extends StatelessWidget {
  const WhoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    landingPageModel pageModel ;
    Size screenSize = MediaQuery.of(context).size;
    PageController controller = new PageController();
    return BlocProvider(
      create: (context) => LandingCubit()..getLandData(),
      child: BlocConsumer<LandingCubit,LandingStates>(
       listener: (context, state) => {},
        builder:(context, state){
          LandingCubit cubit = LandingCubit.get(context);
         return ConditionalBuilder(
           condition: cubit.landingModel != null,
           builder:(context) => bodyConter(context,cubit.landingModel!.data,screenSize) ,
           fallback: (context) => Center(
             child: loading(screenSize.width*0.1),
           ),
         );
        } ,
      ),
    );
  }
  Widget bodyConter (BuildContext ctx, Data? data,Size size) {
    log('${data?.pageContent![0].aboutUs?.content}');
    return Scaffold(
      drawer: drawerScreen(),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize:MainAxisSize.min ,
        children: [
          CustomText(
            txt : data?.pageContent![0].aboutUs?.content,
            color: Theme.of(ctx).textTheme.bodyText1?.color,
            fontSize: 15,
            fontfamily: 'Bree Serif',
            wordSpacing: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: size.height*0.1,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  containerInside(
                      size,
                      BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                        ),
                        color: Color(0xffD99694),
                      ),
                      getTranslated(ctx, 'education_programme'),
                      ctx
                  ),
                  containerInside(
                      size,
                      BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft:Radius.circular(15.0) ,
                          bottomRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0),
                        ),
                        color: Color(0xff604A7B),
                      ),
                      getTranslated(ctx, 'Advocacy_Programme'),
                      ctx
                  ),
                ],
              ),
              DiamondContainer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  containerInside(
                      size,
                      BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                        ),
                        color: Color(0xff00B050),
                      ),
                      getTranslated(ctx, 'Youth_Social_Programme'),
                      ctx
                  ),
                  containerInside(
                      size,
                      BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft:Radius.circular(15.0) ,
                          bottomRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0),
                        ),
                        color: Color(0xff376092),
                      ),
                      getTranslated(ctx, 'protection_programme'),
                      ctx
                  ),
                ],
              )
            ],
          ),

        ],
      ),

    );
  }
  Widget containerInside (Size size ,BoxDecoration boxDec,var string,BuildContext context) {
    return  Container(
      width: size.width*0.4,
      height: size.height*0.2,
      decoration: boxDec,
      child: Center(
        child: CustomText(
          txt: string,
          wordSpacing: 1.0,
          fontfamily: 'Bree Serif',
          color: Theme.of(context).textTheme.bodyText1?.color,
          fontSize: 20,
          textAlign: TextAlign.center,
          overflow: TextOverflow.clip,

        ),
      ),
      );
  }

}
