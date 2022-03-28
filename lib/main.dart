import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:worker_khata/route/route_constant.dart';
import 'package:worker_khata/service/navigation_service.dart';
import 'package:worker_khata/utils/colorHelper.dart';

import 'localization/app_language.dart';
import 'localization/app_localization.dart';
import 'route/route_generator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: kPrimaryColor, //set Status bar color in Android devices.
      statusBarIconBrightness:Brightness.light, //set Status bar icons color in Android devices.
      statusBarBrightness: Brightness.dark) //set Status bar icon color in iOS.
  );

  AppLanguage appLanguage = AppLanguage();
  await appLanguage.fetchLocale();
  runApp(MyApp(
    appLanguage: appLanguage,
  ));
}

class MyApp extends StatelessWidget {

  final AppLanguage appLanguage;

  MyApp({Key? key, required this.appLanguage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppLanguage>(
      create: (_) => appLanguage,
      child: Consumer<AppLanguage>(builder: (context, model, child){
        return MaterialApp(
          locale: model.appLocal,
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('hi', ''),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          // navigatorObservers: [routeObserver],
          navigatorKey: NavigationService().navigationKey,
          title: 'Drive Lady',
          debugShowCheckedModeBanner: false,
          initialRoute: splashLaunch,
          onGenerateRoute: RouteGenerator.generateRoute,
          theme: ThemeData(
            fontFamily: "Gilroy",
            primarySwatch: Colors.pink,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          // home: SplashPage(),
        );
      },),
    );
  }
}
