# Desafio 2: Cadastro de Fornecedor

# Parâmetros disponíveis:
nome_empresa = "tecnologia avançada"
codigo_fornecedor = 12345
valor_contrato = 50000.75

# ESPAÇO PARA SUA SOLUÇÃO:

mensagem = "Fornecedor: #{nome_empresa.upcase} - Código: #{codigo_fornecedor.to_s.rjust(9, '0')} - Contrato: R$ #{valor_contrato.round}"

puts mensagem