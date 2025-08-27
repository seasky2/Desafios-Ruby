# DESAFIO 03 - Acessar itens da nota fiscal

# CONTEXTO:

# Você precisa acessar os itens de uma nota fiscal e exibir quantos itens ela possui.
# Para obter os itens da nota, use: processable.invoice_items
# Para contar os itens, use .count ou .length
# Exiba também o primeiro item encontrado (se existir)"

processable = process_instance.processable

if processable.invoice_items.any?
  primeiro_item = processable.invoice_items.first
  message "A nota fiscal possui #{processable.invoice_items.count} itens. O primeiro item é: #{primeiro_item.description}."
else
  message "A nota fiscal não possui itens."
end