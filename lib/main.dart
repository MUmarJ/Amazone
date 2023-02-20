import 'package:flutter/material.dart';
import 'constants/global_variables.dart';
import 'router.dart';
// import 'features/example/counter.dart';
import 'features/example/tutorial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Regeneron Cockpit',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme:
            const ColorScheme.light(primary: GlobalVariables.secondaryColor),
        appBarTheme: const AppBarTheme(
            // color: GlobalVariables.appBarGradient,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black)),
        // primarySwatch: Colors.purple,
      ),
      // home: const Counter(title: 'Regeneron Cockpit'),
      home: const ExampleHome(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }
}
