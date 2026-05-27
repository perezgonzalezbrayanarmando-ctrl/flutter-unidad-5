import 'package:flutter/material.dart';
import 'logica_calculadora.dart';
import 'pantalla_calculadora.dart';
import 'boton_calculadora.dart';


const Color colorNaranja    = Color(0xFFFF9500);
const Color colorGrisClaro  = Color(0xFF3a3a3a);
const Color colorGrisOscuro = Color(0xFF2a2a2a);
const Color colorBlanco     = Colors.white;
const Color colorNegro      = Color(0xFFcccccc); 

class MiCalculadora extends StatefulWidget {
  @override
  _MiCalculadoraState createState() => _MiCalculadoraState();
}

class _MiCalculadoraState extends State<MiCalculadora> {
  LogicaCalculadora logica = LogicaCalculadora();

  void alPresionarBoton(String boton) {
    setState(() {
      logica.presionarBoton(boton);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      backgroundColor: Color(0xFF1e1e1e),
      body: SafeArea(
        child: Column(
          children: [
            PantallaCalculadora(
              numeroPantalla: logica.numeroPantalla,
              operacion: logica.operacion,
            ),

            Container(
              color: Color(0xFF1e1e1e),
              padding: EdgeInsets.fromLTRB(0, 8, 0, 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BotonCalculadora(texto: "AC",  colorTexto: colorNaranja, colorFondo: colorGrisClaro,  alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "+/-", colorTexto: colorBlanco,  colorFondo: colorGrisClaro,  alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "%",   colorTexto: colorBlanco,  colorFondo: colorGrisClaro,  alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "/",   colorTexto: colorBlanco,  colorFondo: colorNaranja,    alPresionar: alPresionarBoton),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BotonCalculadora(texto: "7", colorTexto: colorBlanco, colorFondo: colorGrisOscuro, alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "8", colorTexto: colorBlanco, colorFondo: colorGrisOscuro, alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "9", colorTexto: colorBlanco, colorFondo: colorGrisOscuro, alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "x", colorTexto: colorBlanco, colorFondo: colorNaranja,    alPresionar: alPresionarBoton),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BotonCalculadora(texto: "4", colorTexto: colorBlanco, colorFondo: colorGrisOscuro, alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "5", colorTexto: colorBlanco, colorFondo: colorGrisOscuro, alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "6", colorTexto: colorBlanco, colorFondo: colorGrisOscuro, alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "-", colorTexto: colorBlanco, colorFondo: colorNaranja,    alPresionar: alPresionarBoton),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BotonCalculadora(texto: "1", colorTexto: colorBlanco, colorFondo: colorGrisOscuro, alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "2", colorTexto: colorBlanco, colorFondo: colorGrisOscuro, alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "3", colorTexto: colorBlanco, colorFondo: colorGrisOscuro, alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "+", colorTexto: colorBlanco, colorFondo: colorNaranja,    alPresionar: alPresionarBoton),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BotonCero(alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: ".", colorTexto: colorBlanco, colorFondo: colorGrisOscuro, alPresionar: alPresionarBoton),
                      BotonCalculadora(texto: "=", colorTexto: colorBlanco, colorFondo: colorNaranja,    alPresionar: alPresionarBoton),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}