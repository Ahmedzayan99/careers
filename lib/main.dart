import 'package:careers/modules/home/cubit/home_cubit.dart';
import 'package:careers/modules/layout/cubit/layout_cubit.dart';
import 'package:careers/modules/layout/layout_screen.dart';
import 'package:careers/modules/transactions/cubit/transactions_cubit.dart';
import 'package:careers/shared/bloc_observer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'modules/career/cubit/career_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LayoutCubit>(create: (context) => LayoutCubit()),
        BlocProvider<HomeCubit>(create: (context) => HomeCubit()),
        BlocProvider<CareerCubit>(create: (context) => CareerCubit()),
        BlocProvider<TransactionsCubit>(create: (context) => TransactionsCubit()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: [
                Locale('en'), // English
                Locale('ar'), // Spanish
              ],
            locale:  Locale('ar'),
              title: 'Flutter Demo',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: child);
        },
        child: const LayoutScreen(),
      ),
    );
  }
}

