# DESAFIO 33 - (Validation Rule) Buscar dados em tabela customizada

# CONTEXTO:

# Você precisa consultar a tabela customizada: Vportal::CustomTable.fetch('custom_table_a2146fc172b4ee7076d7'), 
# para verificar se os códigos IVA dos itens estão configurados corretamente. A tabela contém configurações específicas para cada código IVA, sendo os impostos ICMS,
# IPI, ISS, PIS e COFINS e o IVA de acordo os impostos presentes naquela nota, os campos dessa tabela são: iva, pis, cofins, csll, icms, ipi, iss.
# Verifique no JOKER Report para entender como funciona a validação de IVA e como ela é feita (No futuro as soluções criadas por vocês serão adicionadas lá também!)
# Qualquer dúvida, entre em contato com algum funcional para uma explicação mais detalhada sobre esse desafio para maior aprendizado.

# DICAS:

# - Use Vportal::CustomTable.fetch('identifier_da_tabela') para acessar tabelas customizadas
# - Busque por registros usando .find_by
# - Se o IVA do item for divergente do IVA da tabela, com os mesmos impostos, retorne false
# - Se o IVA do item for nulo, retorne false
# Se o Iva do item não estiver presente na tabela, retorne false
# Se o Iva do item estiver presente na tabela, e com impostos iguais ao item, sendo do mesmo iva, retorne true

processable = process_instance.processable
invoice_items = processable.invoice_items
iva_table = Vportal::CustomTable.fetch('custom_table_a2146fc172b4ee7076d7')

tax_map = {
  "pis_value" => "pis",
  "cofins_value" => "cofins",
  "csll_value" => "csll",
  "icms_value" => "icms",
  "ipi_value" => "ipi",
  "iss_value" => "iss"
}

invoice_items.each do |item|
  return false if item.erp_iva_code.blank?

  iva_code = iva_table.find_by(iva: item.erp_iva_code)
  return false if iva_code.nil?

  tax_map.each do |item_tax, table_tax|
    item_value = item.send(item_tax).to_f != 0.0
    table_value = iva_code[table_tax]
    return false if item_value != table_value
  end
end

return true