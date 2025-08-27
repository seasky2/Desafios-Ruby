# Desafio 9: Análise de Nota Fiscal Real

# CONTEXTO:

# Você agora irá pegar uma nota fiscal do sistema V360 e analisá-la.
# Para isso, você deve verificar o tipo da nota fiscal e classificar se ela é de serviço ou material.
# Além disso, deve retornar o valor do ISS (se for de serviço) ou o valor do ICMS (se for de material).

# PARÂMETROS:

# ID do processo 1: 11677 (Material)
# ID do processo 2: 11811 (Serviço)

# RESULTADO ESPERADO:

# Material
# ICMS: 14.6

# Serviço
# ISS: 8.7

# OBSERVAÇÕES E DICAS:

# Use if/else para verificar o tipo da nota (processable.type)
# Valide o tipo da nota, sendo "Vinvoice::MaterialInvoice" a de Material e "Vinvoice::ServiceInvoice" a de serviço.
# Acesse os atributos .icms_value ou .iss_value conforme necessário

# ESPAÇO PARA SUA SOLUÇÃO:

processable = process_instance.processable

if processable.type == "Vinvoice::MaterialInvoice"
  message "Material\n" \
          "ICMS: #{processable.icms_value}"
elsif processable.type == "Vinvoice::ServiceInvoice"
  message "Serviço\n" \
          "ISS: #{processable.iss_value}"
end