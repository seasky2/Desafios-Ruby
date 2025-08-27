# DESAFIO 24 - Script Rule Preencher Data de vencimento da nota de acordo a data e vencimento do boleto
# 
# CONTEXTO:
# 
# O CO solicitou a você a criação de uma regra de execução de processo que preenche a data de vencimento da nota de acordo com a data de vencimento do boleto,
# para isso você deve criar uma regra de execução de processo, que recebe a data de vencimento do boleto e preenche a data de vencimento da nota de acordo com a data de vencimento do boleto.
# Lembre-se de sempre pensar nas exceções, como por exemplo, se a nota não tiver boleto, deve retornar false e não preencher a data de vencimento da nota, direcionando para uma tratativa manual.

processable = process_instance.processable

possui_boleto = processable.bank_slips&.first&.due_date&.present?

if possui_boleto
  processable.net_due_date = processable.bank_slips.first.due_date
  processable.save!(validate: false)

  return true
end

return false