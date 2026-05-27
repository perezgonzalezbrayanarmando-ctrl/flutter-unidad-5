class LogicaCalculadora {
  String numeroPantalla = "0";
  String operacion = "";
  double primerNumero = 0;
  double segundoNumero = 0;
  String operadorGuardado = "";
  bool yaPresionoIgual = false;
 
 
  void presionarBoton(String boton) {
 
    if (boton == "0" ||
        boton == "1" ||
        boton == "2" ||
        boton == "3" ||
        boton == "4" ||
        boton == "5" ||
        boton == "6" ||
        boton == "7" ||
        boton == "8" ||
        boton == "9") {
      if (numeroPantalla == "0" || yaPresionoIgual) {
        numeroPantalla = boton;
        yaPresionoIgual = false;
      } else {
        numeroPantalla = numeroPantalla + boton;
      }
      operacion = operacion + boton;
    }
 
  
    if (boton == ".") {
      if (!numeroPantalla.contains(".")) {
        numeroPantalla = numeroPantalla + ".";
        operacion = operacion + ".";
      }
    }
 
    if (boton == "AC") {
      numeroPantalla = "0";
      operacion = "";
      primerNumero = 0;
      segundoNumero = 0;
      operadorGuardado = "";
      yaPresionoIgual = false;
    }
 
    
    if (boton == "+" || boton == "-" || boton == "x" || boton == "/") {
      primerNumero = double.parse(numeroPantalla);
      operadorGuardado = boton;
      operacion = operacion + " " + boton + " ";
      yaPresionoIgual = false;
      numeroPantalla = "0";
    }
 
    
    if (boton == "%") {
      double numero = double.parse(numeroPantalla);
      double resultado = numero / 100;
      numeroPantalla = _quitarDecimalFeo(resultado.toString());
    }
 
    
    if (boton == "+/-") {
      if (numeroPantalla != "0") {
        if (numeroPantalla.startsWith("-")) {
          numeroPantalla = numeroPantalla.replaceFirst("-", "");
        } else {
          numeroPantalla = "-" + numeroPantalla;
        }
      }
    }
 

    if (boton == "=") {
      segundoNumero = double.parse(numeroPantalla);
      double resultado = 0;
 
      if (operadorGuardado == "+") {
        resultado = primerNumero + segundoNumero;
      }
      if (operadorGuardado == "-") {
        resultado = primerNumero - segundoNumero;
      }
      if (operadorGuardado == "x") {
        resultado = primerNumero * segundoNumero;
      }
      if (operadorGuardado == "/") {
        if (segundoNumero == 0) {
          numeroPantalla = "Error";
          operacion = "";
          return;
        }
        resultado = primerNumero / segundoNumero;
      }
 
      numeroPantalla = _quitarDecimalFeo(resultado.toString());
      operacion = "";
      yaPresionoIgual = true;
    }
  }
 

  String _quitarDecimalFeo(String numero) {
    if (numero.endsWith(".0")) {
      return numero.replaceAll(".0", "");
    }
    return numero;
  }
}
 