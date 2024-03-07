import 'dart:developer';

import 'package:ajyal/Network/dio_helper.dart';
import 'package:ajyal/model/landingPage.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/end-point.dart';
import 'LandingState.dart';


class LandingCubit extends Cubit <LandingStates> {
  LandingCubit() : super(InitialState());
  static LandingCubit get (context) => BlocProvider.of(context);
   landingPageModel? landingModel ;
   void getLandData () async {
     emit(Loading());
     DioHelper.getData(url:landingPage).then((value) {
       landingModel = landingPageModel.fromJson(value?.data);
       //log('rrrrrr${landingModel?.data!.pageContent![0].aboutUs?.content}');
       emit(GetDataSucess());
     }).catchError((onError){
       if(!isClosed) {
         print(onError.toString());
         emit(GetDataError(onError.toString()));
       }
     });
   }
}