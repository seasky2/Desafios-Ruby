# DESAFIO 27 - ScritRule (Converter CFOP de Entrada para CFOP de saída de acordo SAP)

# CONTEXTO:

# O CO solicitou a você a criação de uma regra de execução de processo que converte o CFOP de entrada para o CFOP de saída de acordo com o SAP, para isso você deve criar uma regra de execução de processo,
# que pega o CFOP de entrada dos itens e converte para o CFOP de saída de acordo com o SAP.
# Para saber qual o padrão que o SAP utiliza, use a internet para consultar sobre tal ponto e como essa conversão é feita.

processable = process_instance.processable
invoice_items = processable.invoice_items

if invoice_items.empty?
  message "Nenhum item encontrado."
  return false
end

cfop_map = { '1' => '5', '2' => '6', '3' => '7' }.freeze

invoice_items.each do |item|
  cfop = item.cfop

  if cfop.blank?
    message "CFOP não encontrado para o item: #{item.description}"
    return false
  end

  if cfop.length != 4 || !cfop_map.key?(cfop[0])
    message "CFOP inválido para o item: #{item.description}"
    return false
  end

  item.cfop[0] = cfop_map[cfop[0]]
end

processable.save!(validate: false)
return true