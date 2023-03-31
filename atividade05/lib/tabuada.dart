import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabuada extends StatefulWidget {
  set _valor1(int _valor1) {}

  @override
  _TabuadaState createState() => _TabuadaState();
}

class _TabuadaState extends State<Tabuada> {
  int _valor1 = 1;
  int _valor2 = 1;
  String _resultado = '';

  void _calcular() {
    setState(() {
      _resultado = '${_valor1 * _valor2}';
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
              '$_valor1 x $_valor2 =',
              style: GoogleFonts.lato(fontSize: 24.0),
            ),
            Text(
              _resultado,
              style: GoogleFonts.lato(
                  fontSize: 34.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<int>(
                  value: _valor1,
                  onChanged: (int? value) {
                    setState(() {
                      _valor1 = value!;
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
                  value: _valor2,
                  onChanged: (int? value) {
                    setState(() {
                      _valor2 = value!;
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
                  onPressed: _calcular,
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

void main() => runApp(MaterialApp(home: Tabuada()));
