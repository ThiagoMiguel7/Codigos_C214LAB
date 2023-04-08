import 'package:atividade06/lugar.dart';
import 'package:atividade06/lugarBloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mockLugarRepository.dart';

void main() {
  group('MyClass', () {
    test('Test successful request', () async {
      final mockRepository = MockLugarRepository(true);
      final LugarBloc bloc = LugarBloc(mockRepository);
      await bloc.getLugar("04548005");
      Lugar? lugar = bloc.lugarResponseSubject.valueOrNull?.lugar;
      expect(lugar?.localidade, equals("São Paulo"));
    });

    test('Test failed request', () async {
      final mockRepository = MockLugarRepository(false);
      final LugarBloc bloc = LugarBloc(mockRepository);
      await bloc.getLugar("04548005");
      String error = bloc.lugarResponseSubject.valueOrNull?.error ?? "";
      expect(error, equals("Erro de requisição"));
    });
  });
}
