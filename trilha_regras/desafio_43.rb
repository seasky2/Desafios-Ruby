# DESAFIO 41 - Validação de prazo de vencimento por região

# CONTEXTO:

# O CO solicitou uma validação que verifique se o prazo de vencimento da nota fiscal está dentro do limite permitido por região. Para isso, ele 
# disponibilizou uma tabela customizada: Vportal::CustomTable.fetch('custom_table_21893b0ea7329f272b64'), com as colunas: estado_do_tomador,
# prazo_maximo_dias, ativo. A validação deve verificar se a diferença entre a data de vencimento e a data atual não excede o prazo máximo configurado
# para o estado do cliente. Se o estado não estiver na tabela ou se o registro não estiver ativo, deve usar um prazo padrão de 30 dias.
# A validação deve retornar false se o prazo for excedido informando a divergência.

processable = process_instance.processable

ct_estado_do_tomador = Vportal::CustomTable.fetch('custom_table_21893b0ea7329f272b64').find_by(estado_do_tomador: processable.customer_state_registration, ativo: true)

prazo_maximo = ct_estado_do_tomador ? ct_estado_do_tomador.prazo_maximo_dias : 30

if processable.net_due_date.nil?
  message "Data de vencimento não informada."
  return false
else
  dias_diferenca = (processable.net_due_date - Date.today).to_i
end

if dias_diferenca > prazo_maximo
  message "Prazo de vencimento acima do limite permitido. Dias vencidos: #{dias_diferenca}, Prazo máximo: #{prazo_maximo}."
  return false
else
  return true
end