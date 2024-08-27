import 'package:aplicacao_bancaria/src/conta/movimentacao.dart';
import 'package:aplicacao_bancaria/src/conta/sinal.dart';
import 'package:aplicacao_bancaria/src/conta/tipo_movimentacao.dart';
import 'package:aplicacao_bancaria/src/pessoa/pessoa.dart';

class Conta<P extends Pessoa> {
  final P _titular;
  double _saldo = 0.0;
  final List<Movimentacao> _movimentacoes = List.empty();

  Conta(this._titular);

  double sacar(double valor) {
    if (valor < 0 || _saldo - valor < 0) {
      throw Exception("Valor indisponivel para saque.");
    }

    _saldo -= valor;
    _movimentacoes
        .add(Movimentacao(TipoMovimentacao.saque, Sinal.debito, valor));
    return valor;
  }

  void depositar(double valor) {
    if (valor < 0) {
      throw Exception("Valor indisponivel para deposito.");
    }

    _saldo += valor;
    _movimentacoes
        .add(Movimentacao(TipoMovimentacao.saque, Sinal.credito, valor));
  }

  void transferir(Conta conta, double valor) {
    conta.depositar(valor);
    sacar(valor);
    _movimentacoes
        .add(Movimentacao(TipoMovimentacao.saque, Sinal.debito, valor));
  }

  P getTitular() => _titular;
  double get() => _saldo;
  List<Movimentacao> getMovimentacoes() => _movimentacoes;
}
