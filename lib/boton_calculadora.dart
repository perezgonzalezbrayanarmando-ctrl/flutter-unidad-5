import 'package:flutter/material.dart';


class BotonCalculadora extends StatefulWidget {
  final String texto;
  final Color colorTexto;
  final Color colorFondo;
  final Function alPresionar;

  BotonCalculadora({
    required this.texto,
    required this.colorTexto,
    required this.colorFondo,
    required this.alPresionar,
  });

  @override
  _BotonCalculadoraState createState() => _BotonCalculadoraState();
}

class _BotonCalculadoraState extends State<BotonCalculadora> {

  bool estaPresionado = false;

  @override
  Widget build(BuildContext context) {
    double tamano = (MediaQuery.of(context).size.width - 60) / 4;

    return Padding(
      padding: EdgeInsets.all(6),
      child: GestureDetector(

        onTapDown: (detalles) {
          setState(() {
            estaPresionado = true;
          });
        },

        onTapUp: (detalles) {
          setState(() {
            estaPresionado = false;
          });
          widget.alPresionar(widget.texto);
        },

        onTapCancel: () {
          setState(() {
            estaPresionado = false;
          });
        },
        child: AnimatedContainer(

          duration: Duration(milliseconds: 80),
          width: tamano,
          height: tamano,
          decoration: BoxDecoration(
            color: widget.colorFondo,
            shape: BoxShape.circle,

            boxShadow: estaPresionado
                ? [

                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(3, 3),
                      blurRadius: 6,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.05),
                      offset: Offset(-2, -2),
                      blurRadius: 4,
                    ),
                  ]
                : [

                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.07),
                      offset: Offset(-4, -4),
                      blurRadius: 8,
                    ),
                  ],
          ),

          child: Transform.scale(
            scale: estaPresionado ? 0.93 : 1.0,
            child: Center(
              child: Text(
                widget.texto,
                style: TextStyle(
                  fontSize: 24,
                  color: widget.colorTexto,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BotonCero extends StatefulWidget {
  final Function alPresionar;

  BotonCero({required this.alPresionar});

  @override
  _BotonCeroState createState() => _BotonCeroState();
}

class _BotonCeroState extends State<BotonCero> {
  bool estaPresionado = false;

  @override
  Widget build(BuildContext context) {
    double tamano = (MediaQuery.of(context).size.width - 60) / 4;

    return Padding(
      padding: EdgeInsets.all(6),
      child: GestureDetector(
        onTapDown: (d) => setState(() => estaPresionado = true),
        onTapUp: (d) {
          setState(() => estaPresionado = false);
          widget.alPresionar("0");
        },
        onTapCancel: () => setState(() => estaPresionado = false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 80),
          width: tamano * 2 + 12,
          height: tamano,
          decoration: BoxDecoration(
            color: Color(0xFF2a2a2a),
            borderRadius: BorderRadius.circular(tamano / 2),
            boxShadow: estaPresionado
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(3, 3),
                      blurRadius: 6,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.05),
                      offset: Offset(-2, -2),
                      blurRadius: 4,
                    ),
                  ]
                : [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.07),
                      offset: Offset(-4, -4),
                      blurRadius: 8,
                    ),
                  ],
          ),
          child: Transform.scale(
            scale: estaPresionado ? 0.97 : 1.0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: tamano * 0.35),
                child: Text(
                  "0",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

          ),
        ),
      ),
    );
  }
}