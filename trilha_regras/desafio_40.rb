# DESAFIO 40 - Preenchimento automático de centro de custo baseado em tabela customizada

# CONTEXTO:

# O CO solicitou que você construa uma regra que preencha automaticamente o campo "erp_center" nos itens da nota fiscal baseado no CNPJ do cliente.
# Para isso, ele disponibilizou uma tabela customizada: Vportal::CustomTable.fetch('custom_table_9698356b10ea71b634a8'),
# com as colunas: cnpj_cliente, centro_custo, ativo. A regra deve buscar o centro de custo correspondente ao CNPJ do cliente na tabela,
# mas apenas os centros ativos. Se não encontrar correspondência ou se o registro não estiver ativo, deve preencher o campo com o valor "Não Encontrado".
# Se encontrar múltiplas correspondências ativas para o mesmo CNPJ, deve usar a primeira encontrada.

processable = process_instance.processable
invoice_items = processable.invoice_items

ct = Vportal::CustomTable.fetch('custom_table_9698356b10ea71b634a8').find_by(cnpj_cliente: processable.customer_identification_number, ativo: true)

invoice_items.each do |item|
  item.erp_center = ct&.centro_custo || 'Não Encontrado'
end

processable.save!(validate: false)
return true