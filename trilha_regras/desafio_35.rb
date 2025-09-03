# DESAFIO 35 - Encontrar Área Centralizadora

# CONTEXTO:

# O CO solicitou que você construa uma tarefa que encontre a área centralizadora da nota, e como contexto ele te passou uma Base manual Customizada:
# Vportal::CustomTable.fetch('custom_table_8ff8e3222d40a3bea302') que contém os campos: area_centralizadora e cnpj_tomador.
# Por meio dessa base você deve criar uma tarefa que encontre a área centralizadora da nota, e atribua a tarefa para o Grupo "Nome da Área Centralizadora"

processable = process_instance.processable

ct_areas = Vportal::CustomTable.fetch('custom_table_8ff8e3222d40a3bea302').find_by(cnpj_tomador: processable.customer_identification_number)

grupo_area = {
  'A1' => 'abstract_user_group_75f779e893573c6b731f',
  'A2' => 'abstract_user_group_289306db6a1a43f384ba',
  'A3' => 'abstract_user_group_38a0693fca976adcef71',
  'A4' => 'abstract_user_group_0b299a119cbdeb8b0d98'
}

return Vportal::UserGroup.find_by(identifier: grupo_area[ct_areas&.area_centralizadora])