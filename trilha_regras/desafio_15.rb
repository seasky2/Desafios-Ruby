# DESAFIO 15 - Buscar dados relacionados

# CONTEXTO:

# Você precisa acessar informações do processo (process_instance)
# Exiba: ID do processo, ID da tarefa atual, status de completude
# Use: process_instance.id, process_instance.recent_task.task_definition_id, process_instance.completed_at, process_instance.assignable_id
# Para melhor entendimento disso entre em contato com algum Funcional para explicação desse maior contexto, acesse uma instância de processo no portal e veja tudo que está disponível para acesso"

process_instance = process_instance

message "ID do processo: #{process_instance.id}\n" \
        "ID da tarefa atual: #{process_instance.recent_task.task_definition_id}\n" \
        "Status de completude: #{process_instance.completed_at}\n" \
        "ID do responsável pela tarefa: #{process_instance.assignedable_id}"