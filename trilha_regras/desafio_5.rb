# DESAFIO 05 - Calcular valor total dos itens

# CONTEXTO:

# Você precisa calcular a soma do valor total de todos os itens de uma nota fiscal.
# Acesse os itens via: processable.invoice_items
# Cada item tem um atributo .total_value
# Some todos os valores e exiba o resultado verificandose o valor total é igual ao valor total da nota fiscal, se for diferente, exiba uma mensagem de erro"

processable = process_instance.processable

total_value = processable.invoice_items.sum(&:total_value)

if (total_value - processable.total_value).abs < Float::EPSILON
  message "O valor total dos itens é igual ao valor total da nota fiscal: #{total_value}"
else
  message "Erro: O valor total dos itens (#{total_value}) é diferente do valor total da nota fiscal (#{processable.total_value})"
end