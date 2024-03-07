import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../../cubit/cubit.dart';
import '../../../lang/helper_lang.dart';
import '../../../main.dart';
import '../../../shared/local/sharedPref.dart';
import '../../../style/Constant.dart';
import 'package:im_animations/im_animations.dart';
import '../../../style/drawer.dart';
import '../../../widget-constant/constWidget.dart';
import '../basic-Screen/first-Screen/one-Screen.dart';
import 'HomeCubit.dart';
import 'HomeStates.dart';
import 'package:side_navigation/side_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    AppThemeCubit cubit = AppThemeCubit.get(context);
    Size screenSize = MediaQuery.of(context).size;
    final _key = GlobalKey<ScaffoldState>();
    PageController controller = new PageController();
    return SafeArea(
          child: BlocProvider(
          create: (context) => HomeCubit(),
          child: BlocConsumer<HomeCubit, HomeStates>(
            listener: (context, state) => {},
            builder: (context, state) {
              HomeCubit homeCubit = HomeCubit.get(context);
              return Scaffold(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              key: _key,
              drawer: drawerScreen(),
              appBar: AppBar(
                elevation: 5.0,
                shadowColor: Colors.grey,
                backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
                actions: [
                  Image.asset(
                    'assets/images/appBar.png',
                    height: screenSize.height * 0.9,
                  ),
                ],
                leading: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: BasicColor,
                  ),
                  onPressed: () => _key.currentState?.openDrawer(),
                ),
              ),
                body: Center(
                  child: OneScreen(),
                ),
            );
            }

          ),
        ));
  }

}




/*  SidebarXItem(
                  icon: Icons.language_outlined,
                  label: getTranslated(context, 'language'),
                  onTap: () {
                    Locale myLocale = Localizations.localeOf(context);
                    if (myLocale.languageCode == 'en') {
                      Locale newLocale = Locale('ar', '');
                      MyApp.setLocale(context, newLocale);
                    } else if (myLocale.languageCode == 'ar') {
                      Locale newLocale = Locale('en', '');
                      MyApp.setLocale(context, newLocale);
                    }
                    print('$myLocale');
                  }),
              SidebarXItem(
                  icon:
                      cubit.isDark ? Icons.dark_mode : Icons.lightbulb_outline,
                  label: cubit.isDark
                      ? getTranslated(context, 'Dark')
                      : getTranslated(context, 'Light'),
                  onTap: () {
                    cubit.changeTheme(formator: !cubit.isDark);
                    SharedPrefrence.saveData(
                        key: 'isDark', value: cubit.isDark);
                    print(cubit.isDark);
                  }),*/