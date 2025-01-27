import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_getx/provider/increment_provider.dart';
import 'package:provider_getx/provider/switc_provider.dart';

import 'View/switch_screen.dart';

void main() {
  runApp( 
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => IncrementProvider(),),
      ChangeNotifierProvider(create: (context) => SwitchProvider(),)
    ],
    child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: IncrementScreen(),
      home: SwitcScreen(),
    );
  }
}
