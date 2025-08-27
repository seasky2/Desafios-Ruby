# DESAFIO 30 - Process Rule (Verificar se nota de referência já passou por tarefa de ID: 1620 no processo)

# CONTEXTO

# O CO solicitou que você construa uma tarefa que verifique se a nota de referência já passou por uma tarefa no processo, para isso você deve criar uma regra de processo,
# que faz essa verificação (retornando true ou false), ou seja você precisa buscar a nota de referência e verificar se ela já passou por uma tarefa especifica no processo.
# A chave de acesso da nota de referência vai estar salva no campo : reference_acess_key
# Você precisa buscar a nota de referência e verificar se ela já passou pela tarefa de Identifier: 'tarefa_simulada' e se passou, deve retornar true, caso contrário, deve retornar false
 
processable = process_instance.processable

return true if processable.tasks.where(task_definition_id: 1620, completed: true, completion_type: 'success').any?

return false