import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabuadaScreen extends StatefulWidget {
  final _TabuadaState state = _TabuadaState();
  int get valor1 => state.valor1;
  int get valor2 => state.valor2;
  String get resultado => state.resultado;

  set valor1(int val) {
    valor1 = val;
  }

  set valor2(int val) {
    valor2 = val;
  }

  set resultado(String res) {
    resultado = res;
  }

  void calcular() {
    state.calcular();
  }

  @override
  // ignore: library_private_types_in_public_api
  _TabuadaState createState() => state;
}

class _TabuadaState extends State<TabuadaScreen> {
  int valor1 = 1;
  int valor2 = 1;
  String resultado = '';

  void calcular() {
    setState(() {
      resultado = '${valor1 * valor2}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tabuada',
          style: GoogleFonts.lato(),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$valor1 x $valor2 =',
              style: GoogleFonts.lato(fontSize: 24.0),
            ),
            Text(
              resultado,
              style:
                  GoogleFonts.lato(fontSize: 34.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<int>(
                  value: valor1,
                  onChanged: (int? value) {
                    setState(() {
                      valor1 = value!;
                    });
                  },
                  items: List.generate(10, (index) {
                    return DropdownMenuItem(
                      value: index + 1,
                      child: Text(
                        '${index + 1}',
                        style: GoogleFonts.lato(),
                      ),
                    );
                  }),
                ),
                Text(
                  'x',
                  style: GoogleFonts.lato(),
                ),
                DropdownButton<int>(
                  value: valor2,
                  onChanged: (int? value) {
                    setState(() {
                      valor2 = value!;
                    });
                  },
                  items: List.generate(10, (index) {
                    return DropdownMenuItem(
                      value: index + 1,
                      child: Text(
                        '${index + 1}',
                        style: GoogleFonts.lato(),
                      ),
                    );
                  }),
                ),
                ElevatedButton(
                  onPressed: calcular,
                  child: Text(
                    'Calcular',
                    style: GoogleFonts.lato(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: TabuadaScreen()));
