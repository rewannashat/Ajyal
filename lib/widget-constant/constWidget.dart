import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';



Future NavAndRemove ({screen , ctx}) {
  return  Navigator.pushAndRemoveUntil(ctx, MaterialPageRoute(builder:  (ctx) => screen,), (route) => false);
}
 Future NormalNav ({screen,ctx}) {
  return  Navigator.push(ctx, MaterialPageRoute(builder:(ctx) => screen,));
 }
enum StatusCase {SUCCES , ERROR , EARNING}

 void toast ({
  required String msg ,
   required StatusCase state ,
}) {
   Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: ChangeColor(state),
      textColor: Colors.white,
      fontSize: 16.0) ;
 }

 Color ChangeColor (StatusCase st) {
  Color? c ;
  switch (st) {
    case StatusCase.SUCCES :
      c =  Colors.green ;
    break ;
    case StatusCase.ERROR :
      c =  Colors.red ;
      break ;
    case StatusCase.EARNING :
      c =  Colors.amber ;
      break ;
  }
  return c ;
 }
final divider = Divider(color:Colors.white.withOpacity(0.3), height: 1);
loading (double size) {
  return LoadingAnimationWidget.hexagonDots(
    size: size,
    color: Colors.grey.withOpacity(0.3),
  );
}
