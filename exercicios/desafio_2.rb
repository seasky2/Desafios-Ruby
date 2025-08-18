# Desafio 2: Cadastro de Fornecedor

# CONTEXTO:

# Você recebeu dados de um fornecedor que precisam ser formatados para o sistema.

# PARÂMETROS:

# nome_empresa = "tecnologia avançada"
# codigo_fornecedor = 12345
# valor_contrato = 50000.75

# RESULTADO ESPERADO:

# Fornecedor: TECNOLOGIA AVANÇADA - Código: 000012345 - Contrato: R$ 50001"

# OBSERVAÇÕES E DICAS:

# Use conversão de tipos, concatenação e transformação de maiúscula.
# O código do fornecedor deve ter 9 dígitos, com zeros à esquerda.
# O valor do contrato deve ser arredondado para o número inteiro mais próximo, sem casas decimais.

# ESPAÇO PARA SUA SOLUÇÃO:

nome_empresa = "tecnologia avançada"
codigo_fornecedor = 12345
valor_contrato = 50000.75

mensagem = "Fornecedor: #{nome_empresa.upcase} - Código: #{codigo_fornecedor.to_s.rjust(9, '0')} - Contrato: R$ #{valor_contrato.round}"

puts mensagem