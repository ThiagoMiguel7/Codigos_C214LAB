import 'package:atividade05/tabuadaScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tabuada', () {
    test('Testa inicialização de resultado', () {
      final tabuada = TabuadaScreen();
      expect(tabuada.resultado, '');
    });

    test('Testa mudança de valor de _valor1', () {
      final tabuada = TabuadaScreen();
      tabuada.valor1 = 5;
      expect(tabuada.valor1, 5);
    });

    test('Testa mudança de valor de _valor2', () {
      final tabuada = TabuadaScreen();
      tabuada.valor2 = 7;
      expect(tabuada.valor2, 7);
    });

    test('Testa mudança de valor de _resultado após execução de _calcular()',
        () {
      final tabuada = TabuadaScreen();
      tabuada.valor1 = 5;
      tabuada.valor2 = 4;
      tabuada.calcular();
      expect(tabuada.resultado, '20');
    });
  });
}
