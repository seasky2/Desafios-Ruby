# DESAFIO 26 - (Validaton Rule) Validar Boleto contra nota fiscal
# 
# CONTEXTO:
# 
# O CO solicitou a você a criação das validações para validar todos os dados de um boleto contra a nota fiscal, sendo eles: cnpj do beneficiário, do sacado e o valor total do boleto,
# faça seguindo o padrão de retorno: [validation_result, processable_value, data_fetcher_value],
# sendo que os dados do processable_value são os dados do boleto e os dados do data_fetcher_value são os dados da nota fiscal.
# Como você recebeu muitos dados o mais recomendado é criar diferentes validações para cada dado.
# Você precisa definir quantas regras de validação criar, se é necessário criar regras de validação, e configurar isso na tarefa de ID: 1627,
# é recomendando entrar em contato com algum funcional para uma explicação mais detalhada sobre esse desafio para maior aprendizado.

processable = process_instance.processable

possui_boleto = processable.bank_slips&.first&.document_pdf&.attached? || processable&.bar_code&.present?

processable_value = [processable.bank_slips&.first&.supplier_identification_number, processable.bank_slips&.first&.customer_identification_number, processable.bank_slips&.first&.document_value]
data_fetcher_value = [processable.supplier_identification_number, processable.customer_identification_number, processable.total_value]

cnpj_beneficiario = processable_value[0] == data_fetcher_value[0]
cnpj_sacado = processable_value[1] == data_fetcher_value[1]
valor_total = (processable_value[2].to.f - data_fetcher_value[2].to.f).abs < Float::EPSILON

if possui_boleto && cnpj_beneficiario && cnpj_sacado && valor_total
  validation_result = true
else
  validation_result = false
end

[validation_result, processable_value, data_fetcher_value]