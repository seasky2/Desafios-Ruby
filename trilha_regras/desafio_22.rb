# DESAFIO 22 - Validation Rule (Validação com tolerância)

# CONTEXTO:

# Você precisa validar se o valor do icms está proporcional ao valor do SAP porem com uma tolerância de R$ 0,05 acima ou abaixo, para isso você deve criar uma regra de validação,
# que recebe o valor do icms pelo processable_value e o valor do SAP pelo data_fetcher_value e verifica se está dentro da tolerância.
# Use o padrão de regras de validação visto anteriormente em outros desafios
# Lembre-se da tolerância de R$ 0,05 acima ou abaixo
# Retorne como validação: [validation_result, processable_value, data_fetcher_value]

processable_value = value_to_validate
data_fetcher_value = validation_value

validation_result = (processable_value.to_f - data_fetcher_value.to_f).abs <= 0.05

[validation_result, processable_value, data_fetcher_value]