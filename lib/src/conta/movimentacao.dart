import 'package:aplicacao_bancaria/src/conta/sinal.dart';
import 'package:aplicacao_bancaria/src/conta/tipo_movimentacao.dart';

class Movimentacao {
  final TipoMovimentacao _tipoMovimentacao;
  final double _valor;
  final Sinal _sinal;

  Movimentacao(this._tipoMovimentacao, this._sinal, this._valor);

  TipoMovimentacao getTipoMovimentacao() => _tipoMovimentacao;
  double getValor() => _valor;
  Sinal getSinal() => _sinal;
}
