import 'package:flutter/material.dart';

class PantallaCalculadora extends StatelessWidget {
  final String numeroPantalla;
  final String operacion;

  PantallaCalculadora({
    required this.numeroPantalla,
    required this.operacion,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,

        color: Color(0xFF1e1e1e),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            Text(
              operacion,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white38,
              ),
            ),
            SizedBox(height: 8),

            Text(
              numeroPantalla,
              style: TextStyle(
                fontSize: 68,
                fontWeight: FontWeight.w200,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black54,
                    offset: Offset(2, 2),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            Container(
              height: 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.white12,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}