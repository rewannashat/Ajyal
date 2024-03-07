

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../main.dart';

import '../../auth-screen/LoginScreen.dart';
import '../basic-Screen/first-Screen/one-Screen.dart';
import '../basic-Screen/last-Screen/Setting-Screen.dart';
import '../basic-Screen/last-Screen/contactUs-Screen.dart';
import '../basic-Screen/last-Screen/ourProgram-Screen.dart';
import '../basic-Screen/last-Screen/stories-Screen.dart';
import '../basic-Screen/last-Screen/strategic-Screen.dart';
import '../basic-Screen/last-Screen/who-Screen.dart';
import 'HomeStates.dart';


class HomeCubit extends Cubit <HomeStates> {
  HomeCubit() : super(InitialState());
  static HomeCubit get (context) => BlocProvider.of(context);
List pages = [
   const OneScreen() ,
  const WhoScreen() ,
  const strategicPlan() ,
  const ourProgram() ,
  const stories() ,
  const LoginScreen() ,
  const contactUs() ,
  const Setting() ,
] ;
  late int page  ;
   void changePages (int p) {
       page = p ;
       pages[page] ;
       print('$page');
       print('${pages[page]}');
       emit(HomeChangeBottomNavState());

    }


  }




