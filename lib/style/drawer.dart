import 'package:ajyal/lang/helper_lang.dart';
import 'package:ajyal/style/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sidebarx/sidebarx.dart';

import '../layout/main-screen/Home/HomeCubit.dart';
import '../layout/main-screen/Home/HomeStates.dart';
import '../layout/main-screen/basic-Screen/first-Screen/one-Screen.dart';
import '../layout/main-screen/basic-Screen/last-Screen/who-Screen.dart';
import '../widget-constant/constWidget.dart';
import 'custom_text.dart';

class drawerScreen extends StatelessWidget {

  drawerScreen({Key? key }) : super(key: key);
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => HomeCubit(),

      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) => {},
        builder:(context, state) {
          HomeCubit homeCubit = HomeCubit.get(context);
          return Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          width: screenSize.width*0.7,
          child: ListView(
            children:[
              DrawerHeader(
                decoration: BoxDecoration(
                  color:scaffoldBackgroundColor,
                ),
                child: CircleAvatar(
                  backgroundColor: Color(0xFF464667),
                  child: Image.asset('assets/images/user.png' , width: screenSize.width*0.2) ,
                ),
              ),
              listTitle(context: context , icon:Icons.home,txt: getTranslated(context, 'Home') , function: (){
                NormalNav(screen: OneScreen() , ctx: context);
              }),
              listTitle(context: context , icon:Icons.search,txt: getTranslated(context, 'Who'),function: () {
                NormalNav(screen: WhoScreen() , ctx: context);

              }),
              listTitle(context: context , icon:Icons.people,txt: getTranslated(context, 'our_strategic_plan'),
                  function: () {HomeCubit.get(context).changePages(2);}),
              listTitle(context: context , icon:Icons.category,txt: getTranslated(context, 'our_program'),
                  function: () {HomeCubit.get(context).changePages(3);}),
              listTitle(context: context , icon:Icons.star,txt: getTranslated(context, 'stories'),function: () {HomeCubit.get(context).changePages(4);}),
              listTitle(context: context , icon:Icons.login,txt: getTranslated(context, 'Login'),function: () {HomeCubit.get(context).changePages(5);}),
              listTitle(context: context , icon:Icons.contact_support,txt: getTranslated(context, 'contact_us'),function: () {HomeCubit.get(context).changePages(6);}),
              listTitle(context: context , icon:Icons.settings,txt: getTranslated(context, 'Settings'),function: () {HomeCubit.get(context).changePages(7);}),
            ],
          ),
        );
        }
      ),
    );


  }
  Widget listTitle({required BuildContext context, required IconData icon,required var txt , required Function function}) {
    return  ListTile(
      leading: Icon(icon),
      title: CustomText(txt: txt , color: Theme.of(context).textTheme.bodyText1?.color),
      onTap: ()=>function(),

    );
  }

}



const primaryColor = Color(0xFF685BFF);
const canvasColor = Color(0xFF2E2E48);
const scaffoldBackgroundColor = Color(0xFF464667);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);