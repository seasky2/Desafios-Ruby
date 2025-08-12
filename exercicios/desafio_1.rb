# Desafio 1: Formatação de Cobrança do Tomador

# Parâmetros disponíveis:
cnpj_tomador = "12345678000195"
valor_pagar = 1250

# ESPAÇO PARA SUA SOLUÇÃO:

mensagem = "O Tomador: #{cnpj_tomador} , precisa pagar: #{'%.2f' % valor_pagar.to_f} R$"

message mensagem