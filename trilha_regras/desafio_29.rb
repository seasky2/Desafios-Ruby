# DESAFIO 29 - Process Rule (Verificar se a intalação da nota de energia está ativa)

# CONTEXTO

# O CO solicitou que você construa uma tarefa que verifique se a instalação da nota de energia está ativa, para isso você deve criar uma regra de processo,
# que faz essa verificação (retornando true ou false).

processable = process_instance.processable

installation_number = processable.installation_number

return true if Vmasterdata::Installation.find_by(number: installation_number).active?

return false