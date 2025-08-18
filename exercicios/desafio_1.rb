# Desafio 1: Formatação de Email

# CONTEXTO:

# Você recebeu dados do sistema e precisa formatar um texto que será enviado por e-mail para cobrança de tomador.

# PARÂMETROS:

# cnpj_tomador: "12345678000195"
# valor_pagar: 1250

# RESULTADO ESPERADO:

# O Tomador: 12345678000195 , precisa pagar: 1250.00 R$

# OBSERVAÇÕES E DICAS:

# Use conversão de tipos e concatenação/interpolação de strings.
# O valor deve conter duas casas decimais.
# O texto precisa sair exatamente no formato acima.

# ESPAÇO PARA SUA SOLUÇÃO:

cnpj_tomador = "12345678000195"
valor_pagar = 1250

mensagem = "O Tomador: #{cnpj_tomador} , precisa pagar: #{'%.2f' % valor_pagar.to_f} R$"

puts mensagem