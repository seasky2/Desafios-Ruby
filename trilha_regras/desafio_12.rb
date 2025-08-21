# DESAFIO 12 - Script Rule - Campo customizado com código interno

# CONTEXTO:

# Você precisa preencher um campo customizado ""cf_codigo_interno_cliente"" com o padrão:
# ECO-[NUMERO_NOTA]-[SERIE]
# Use: number, series
# Exemplo: se nota = 12345 e serie = 001, resultado = ""ECO-12345-001""
# Retorne o valor calculado para script-rule"

processable = process_instance.processable

processable.cf_codigo_interno_cliente = "ECO-#{processable.number}-#{processable.series}"

processable.save!(validate: false)

message processable.cf_codigo_interno_cliente

true