import 'package:ajyal/shared/bloc_observer.dart';
import 'package:ajyal/shared/local/sharedPref.dart';
import 'package:ajyal/style/Constant.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Network/dio_helper.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';
import 'lang/app_local.dart';
import 'layout/auth-screen/LoginScreen.dart';
import 'layout/main-screen/Home/HomeScreen.dart';
import 'layout/main-screen/basic-Screen/last-Screen/LandingCubit.dart';
import 'layout/splash-Screen.dart';
import 'layout/student-screen/showFreelance-Screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'layout/test.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  await SharedPrefrence.init();
  await ScreenUtil.ensureScreenSize();
  //token = SharedPrefrence.getData(key: 'Authorization');
 // isFormate = SharedPrefrence.getData(key: 'isDark');
  runApp(MyApp());

}
late bool isFormate ;
class MyApp extends StatefulWidget {

  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.changeLanguage(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late var boaeding = SharedPrefrence.getData(key: 'OnBoarding');
   Locale? _locale;

  changeLanguage(Locale locale) async {
    await SharedPrefrence.saveData(key:'lang', value: locale.languageCode);
    setState(() {
      _locale = locale;
    });
  }
  @override
  void initState() {
    getLang();
    //isFormate = SharedPrefrence.getData(key:'isDark');
   // print('hereeeee$isFormate');
    super.initState();
  }
  getLang() async {
    if (await SharedPrefrence.getData(key: 'lang') == null) {
      await SharedPrefrence.saveData(key: 'lang', value: 'en');
    }
    String? langCode = await SharedPrefrence.getData(key: 'lang');
    setState(() {
      _locale = Locale(langCode!, null);
    });
    print(_locale);
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppThemeCubit()..changeTheme(),),
        BlocProvider(create: (context) => LandingCubit()..getLandData(),),
      ],
      child: BlocConsumer<AppThemeCubit, AppStates>(
        listener: (context, state) => {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: AppThemeCubit.get(context).isDark? ThemeMode.light : ThemeMode.dark,
            home:SplashScreen(),
            localizationsDelegates: [
              AppLocale.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale('en', ''),
              Locale('ar', ''),
            ],
            localeResolutionCallback: (currentLocale, supportedLocales) {
              if (currentLocale != null) {
                for (var locale in supportedLocales) {
                  if (currentLocale.languageCode == locale.languageCode) {
                    return currentLocale;
                  }
                }
              }
              return supportedLocales.first;
            },
            locale: _locale,
          );
        },
      ),
    );

  }

  Widget? screen ()  {
    if (boaeding == false || boaeding == null ) {
      return SplashScreen() ;
    } else if (boaeding == true ) {
      if (token != null ) {
        return ShowFreelance();
      } else {
        return HomeScreen();
        //HomeScreen()
      }
    }
  }
}