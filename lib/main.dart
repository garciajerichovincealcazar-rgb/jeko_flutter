import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/screens/newsfeed_screen.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Facebook Replication',
          initialRoute: '/newsfeed',
          routes: {'/newsfeed': (context) => const NewsfeedScreen()},
        );
      },
    );
  }
}
