# DESAFIO 01 - Acessar valor total da nota fiscal

# CONTEXTO:

# Você precisa acessar o valor total de uma nota fiscal e exibir essa informação na tela.
# Para obter a nota fiscal, use: processable = process_instance.processable
# Para obter o valor total, use: .total_value da nota
# Para exibir informações, use o método message ao invés de puts"

processable = process_instance.processable

message "O valor total da nota fiscal é: #{processable.total_value}"