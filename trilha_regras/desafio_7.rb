# DESAFIO 07 - Listar CFOPs dos itens

# CONTEXTO:

# Você precisa listar todos os CFOPs (Código Fiscal de Operações e Prestações) de uma nota.
# Acesse o banco de dados para ver se o cfop está na nota ou nos itens da nota"

processable = process_instance.processable

cfops = processable.invoice_items.map(&:cfop).compact.uniq

if cfops.any?
  message "CFOPs presentes na nota:"
  cfops.each do |cfop|
    message "- CFOP: #{cfop}"
  end
else
  message "Nenhum CFOP presente na nota."
end