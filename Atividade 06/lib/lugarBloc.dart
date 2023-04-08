import 'package:atividade06/lugar.dart';
import 'package:atividade06/lugarRepository.dart';
import 'package:atividade06/lugarResponse.dart';
import 'package:rxdart/rxdart.dart';

class LugarBloc {
  final LugarRepositoryInterface _repository;
  final BehaviorSubject<bool> _loadingSubject =
      BehaviorSubject<bool>.seeded(false);
  final BehaviorSubject<LugarResponse> _lugarResponseSubject =
      BehaviorSubject<LugarResponse>();
  BehaviorSubject<bool> get loadingSubject => _loadingSubject;
  BehaviorSubject<LugarResponse> get lugarResponseSubject =>
      _lugarResponseSubject;

  LugarBloc(LugarRepositoryInterface repository) : _repository = repository;

  getLugar(String cep) async {
    var loadingSink = _loadingSubject.sink;
    var lugarResponseSink = _lugarResponseSubject.sink;
    var isAlreadyLoading = _loadingSubject.value;
    if (isAlreadyLoading) {
      return;
    }
    loadingSink.add(true);
    if (cep.isEmpty) {
      lugarResponseSink.add(LugarResponse.withError("CEP não informado!"));
    } else {
      LugarResponse response = await _repository.getLugar(cep);
      lugarResponseSink.add(response);
    }
    loadingSink.add(false);
  }

  dispose() {
    _lugarResponseSubject.close();
    _loadingSubject.close();
  }
}
