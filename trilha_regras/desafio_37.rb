# DESAFIO 37 - Enviar email dos usuários da área centralizadora

# CONTEXTO:

# O mesmo CO que solicitou a tarefa de retornar a área centralizadora para uma tarefa, agora quer que você construa uma forma de sempre que a nota chegar na
# tarefa de aguardando pagamento, seja enviado um email para todos os usuários daquela Área Centralizadora, para isso o CO já configurou a tarefa,
# e deseja de você apenas uma BR que retorne a ele os emails de todos os usuários dessa Área Centralizadora.

processable = process_instance.processable

ct_areas = Vportal::CustomTable.fetch('custom_table_8ff8e3222d40a3bea302').find_by(cnpj_tomador: processable.customer_identification_number)

grupo_area = {
  'A1' => 'abstract_user_group_75f779e893573c6b731f',
  'A2' => 'abstract_user_group_289306db6a1a43f384ba',
  'A3' => 'abstract_user_group_38a0693fca976adcef71',
  'A4' => 'abstract_user_group_0b299a119cbdeb8b0d98'
}

return Vportal::UserGroup.find_by(identifier: grupo_area[ct_areas&.area_centralizadora]).users.pluck(:email)