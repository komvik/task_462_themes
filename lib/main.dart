import 'package:flutter/material.dart';

const Color lightThemeTextColor = Colors.black87;
const Color darkThemeTextColor = Colors.white70;
const Color myThemeTextColor = Color.fromARGB(255, 255, 255, 255);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 32, fontWeight: FontWeight.bold, color: lightThemeTextColor),
    headlineMedium: TextStyle(
        fontSize: 24, color: lightThemeTextColor), // Keep the headlineMedium
    bodyLarge: TextStyle(fontSize: 18, color: lightThemeTextColor),
    bodyMedium: TextStyle(fontSize: 16, color: lightThemeTextColor),
    bodySmall: TextStyle(fontSize: 14, color: lightThemeTextColor),
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.blue, // Background color for the AppBar in light mode
    titleTextStyle: TextStyle(
      color: Colors.white, // AppBar title text color for light mode
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color: Colors.white), // Icon color
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    foregroundColor: Colors.grey,
    backgroundColor: Colors.black,
    textStyle: const TextStyle(),
  )),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
  scaffoldBackgroundColor: Colors.white,
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 32, fontWeight: FontWeight.bold, color: darkThemeTextColor),
    headlineMedium: TextStyle(
        fontSize: 38,
        color: darkThemeTextColor), // Keep the headlineMedium for dark mode
    bodyLarge: TextStyle(fontSize: 18, color: darkThemeTextColor),
    bodyMedium: TextStyle(fontSize: 16, color: darkThemeTextColor),
    bodySmall: TextStyle(fontSize: 14, color: darkThemeTextColor),
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.red, // Background color for dark mode AppBar
    titleTextStyle: TextStyle(
      color: Colors.white, // AppBar title text color for dark mode
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color: Colors.white), // Icon color
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.yellow,
      backgroundColor: Colors.red,
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
      .copyWith(brightness: Brightness.dark),
  scaffoldBackgroundColor: Colors.black,
);

ThemeData myTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 255, 255, 255)),
    headlineMedium: TextStyle(
        fontSize: 38,
        color: Color.fromARGB(
            255, 210, 218, 125)), // Keep the headlineMedium for dark mode
    bodyLarge: TextStyle(fontSize: 18, color: myThemeTextColor),
    bodyMedium: TextStyle(fontSize: 16, color: myThemeTextColor),
    bodySmall: TextStyle(fontSize: 14, color: myThemeTextColor),
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.red, // Background color for dark mode AppBar
    titleTextStyle: TextStyle(
      color: Colors.white, // AppBar title text color for dark mode
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color: Colors.white), // Icon color
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.yellow,
      backgroundColor: Colors.red,
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
      .copyWith(brightness: Brightness.light),
  scaffoldBackgroundColor: const Color.fromARGB(255, 187, 64, 16),
);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key})
      : appBarBgColor = const Color.fromARGB(99, 22, 12, 141);

  final Color appBarBgColor;

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final Color lightThemeTextColor = Colors.black87;

  final Color darkThemeTextColor = Colors.white70;

  final SettingsRepository settingsRepository = SettingsRepository();

  @override
  Widget build(BuildContext context) {
    bool darkMode = settingsRepository.getDarkMode();
    return MaterialApp(
      title: "Stechbrief Ameise",

      //
      //theme: myTheme,
      //theme: darkTheme,
      //theme: lightTheme,
      theme: darkMode ? ThemeData.dark() : ThemeData.light(),
      //

      home: Scaffold(
        //
        //

        appBar: AppBar(
          title: const Text(" Steckbrief Ameise "),
          backgroundColor: const Color.fromARGB(99, 22, 12, 141),
        ),
        body: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Image(image: AssetImage("assets/amaise.png")),
                  //

                  Text('Name',
                      style: Theme.of(context).textTheme.headlineSmall),

                  Text('Ami als Ami',
                      style: Theme.of(context).textTheme.bodyLarge),
                  Text('Gewicht',
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text('12 g.', style: Theme.of(context).textTheme.bodyLarge),
                  Text('Größe',
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text('5 mm', style: Theme.of(context).textTheme.bodyLarge),
                  Text('Lieblingsessen',
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text('Zucker', style: Theme.of(context).textTheme.bodyLarge),
                  //
                  //  Togle

                  const SizedBox(height: 20),
//
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 187, 64, 16)),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    width: 200,
                    child: SwitchListTile(
                      title: const Text("Mode"),
                      activeColor: const Color.fromARGB(255, 187, 64, 16),
                      value: darkMode,
                      onChanged: (bool value) {
                        //setState(() {  value ? theme: lightTheme : theme: darkTheme, });
                        setState(() {
                          settingsRepository.setDarkMode(value);
                        });
                      },
                    ),
                  ),
                  //
                  //
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class SettingsRepository {
  bool _darkMode = false;
  bool getDarkMode() => _darkMode;

  void setDarkMode(bool value) {
    _darkMode = value;
    // log('Dark Mode set to: $_darkMode');
  }
}
