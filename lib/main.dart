import 'package:flutter/material.dart';
import 'package:flutter_group_tb_server/database_helper.dart';
import 'group_list_screen.dart';

final dbHelper = DatabaseHelper();
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dbHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: GroupNameListScreen(),
    );
  }
}
