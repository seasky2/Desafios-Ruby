# DESAFIO 19 - Condicional com múltiplas condições

# CONTEXTO:

# Você precisa criar uma lógica que classifica uma nota fiscal baseada em múltiplas condições:
# - Se valor > 10000: ""ALTO VALOR""
# - Se valor > 1000 e tipo é serviço: ""SERVIÇO MÉDIO""
# - Se valor <= 1000: ""BAIXO VALOR""
# - Caso contrário: ""PADRÃO""
# Essa classificação deve ser feita no script rule, e deve ser preenchida em um campo customizado chamado ""cf_classificacao_nota""

processable = process_instance.processable

valor_total = processable.total_value
cf_classificacao_nota = ""

if valor_total > 10000
  cf_classificacao_nota = "ALTO VALOR"
elsif valor_total > 1000 && processable.type == "Vinvoice::ServiceInvoice"
  cf_classificacao_nota = "SERVIÇO MÉDIO"
elsif valor_total <= 1000
  cf_classificacao_nota = "BAIXO VALOR"
else
  cf_classificacao_nota = "PADRÃO"
end

processable.cf_classificacao_nota = cf_classificacao_nota

processable.save!(validate: false)