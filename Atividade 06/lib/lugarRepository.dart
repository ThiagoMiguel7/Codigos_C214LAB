import 'package:atividade06/lugarApiProvider.dart';
import 'package:atividade06/lugarResponse.dart';

abstract class LugarRepositoryInterface {
  Future<LugarResponse> getLugar(String cep);
}

class LugarRepository extends LugarRepositoryInterface {
  final LugarApiProvider _apiProvider = LugarApiProvider();

  @override
  Future<LugarResponse> getLugar(String cep) {
    return _apiProvider.getLugar(cep);
  }
}
