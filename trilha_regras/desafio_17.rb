# DESAFIO 17 - Validação de CNPJ (Validation Rule)

# CONTEXTO:

# Geralmente o CO irá te solicitar uma tarefa de validação que verifique se o CNPJ do fornecedor está igual ao que retorna do SAP no campo Data fether value,
# e retorne uma divergência caso não esteja, para isso você deve criar uma regra de validação, seguindo o padrão visto anteriormente em outros desafios,
# e retorne o resultado como uma validação: [validation_result, processable_value, data_fetcher_value]

# validation_result: true se o CNPJ estiver igual ao que retorna do SAP no campo Data fether value, false caso contrário
# processable_value: o CNPJ do fornecedor na nota fiscal
# data_fetcher_value: o CNPJ que retorna do SAP no campo Data fether value

processable_value = value_to_validate
data_fetcher_value = validation_value

validation_result = processable_value == data_fetcher_value

[validation_result, processable_value, data_fetcher_value]