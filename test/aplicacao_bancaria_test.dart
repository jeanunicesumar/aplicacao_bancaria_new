import 'package:aplicacao_bancaria/src/conta/conta.dart';
import 'package:aplicacao_bancaria/src/pessoa/pessoa_fisica.dart';
import 'package:aplicacao_bancaria/src/pessoa/pessoa_juridica.dart';
import 'package:test/test.dart';

void main() {
  group('Aplicacao Bancaria Teste', () {
    test('is Pessoa Fisica', () {
      final PessoaFisica jean = PessoaFisica("Jean");
      final Conta conta = Conta(jean);

      expect(conta.getTitular(), isA<PessoaFisica>());
    });

    test('is Pessoa Juridica', () {
      final PessoaJuridica jean = PessoaJuridica("Jean");
      final Conta conta = Conta(jean);

      expect(conta.getTitular(), isA<PessoaJuridica>());
    });
  });
}
