# DESAFIO 08 - Validação simples de valor

# CONTEXTO:

# Você precisa criar uma validação customizada que verifica se o valor de um imposto é igual ao que veio do SAP no campo Data fether value
# Para validações, o retorno deve ser: [validation_result, processable_value, data_fetcher_value]
# O processable value geralmente recebe o valor do value_to_validate
# O data_fetcher_value geralmente recebe o valor do validation_value
# validation_result deve ser true/false
# Entre em contato com algum funcional para uma explicação mais detalhada sobre esse desafio

processable = process_instance.processable

processable_value = processable.value_to_validate
data_fetcher_value = 1096.50

validation_result = processable_value == data_fetcher_value

[validation_result, processable_value, data_fetcher_value]