import 'dart:developer';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../model/landingPage.dart';
import '../../../../style/custom_text.dart';
import '../../../../widget-constant/constWidget.dart';
import 'LandingCubit.dart';
import 'LandingState.dart';
class stories extends StatelessWidget {
  const stories({Key? key}) : super(key: key);

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize:MainAxisSize.min ,
      children: [
        CustomText(
          txt : 'نماذج مميزة ممن شاركوا في تدريباتنا يمتلكون مهارة مميزة',
          color: Theme.of(ctx).textTheme.bodyText1?.color,
          fontSize: 15,
          fontfamily: 'Bree Serif',
          wordSpacing: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: size.height*0.1,),
        ClipOval(
          child: SizedBox.fromSize(
            size: Size.fromRadius(170), // Image radius
            child:  Image.network('${data?.pageContent![0].aboutUs!.images![2]}'),
          ),
        ),
      ],
    );
  }
}
