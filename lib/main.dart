import 'package:flutter/cupertino.dart';
import 'mi_calculadora.dart';
 
void main() {
  runApp(MiApp());
}
 
class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: MiCalculadora(),
    );
  }
}