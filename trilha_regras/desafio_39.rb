# DESAFIO 39 - Regex para preenchimento de Pedido de Compra

# CONTEXTO:

# O CO solicitou que você construa uma regra que preencha o campo de pedido de compra dos itens da nota fiscal,
# para isso ele te informou que o cliente preencher o pedido de compra no campo de descrição da nota fiscal, seguido o seguinte padrão: PO: DDDDDDDDDD,
# ou seja sempre eles preenchem o pedido de compra no campo de descrição da nota fiscal com PO seguido de : e 10 digitos, você deve pegar essa informação
# e preencher o campo de pedido de compra dos itens da nota fiscal.
# Para resolver esse desafio você deve entender melhor sobre Regex e como ela funciona no ruby.

processable = process_instance.processable
invoice_items = processable.invoice_items

invoice_items.each do |item|
  item.purchase_order = processable.service_description.match(/PO: (\d{10})/)[1]
end

processable.save!(validate: false)
return true