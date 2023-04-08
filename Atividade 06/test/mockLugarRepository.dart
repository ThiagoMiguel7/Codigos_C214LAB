import 'package:atividade06/lugar.dart';
import 'package:atividade06/lugarRepository.dart';
import 'package:atividade06/lugarResponse.dart';

class MockLugarRepository extends LugarRepositoryInterface {
  bool success;

  MockLugarRepository(this.success);

  @override
  Future<LugarResponse> getLugar(String cep) {
    Lugar lugar = Lugar(
        cep: "04548005",
        bairro: "Vila Olímpia",
        localidade: "São Paulo",
        uf: "SP",
        ddd: "11");
    LugarResponse response = success
        ? LugarResponse.withSuccess(lugar)
        : LugarResponse.withError("Erro de requisição");
    return Future.value(response);
  }
}
