# DESAFIO 16 - Process Rule (Nota Vencida)
# 
# CONTEXTO:
#
# Como você sabe temos diversos tipos de regras de processo, mas nesse desafio vamos trabalhar com uma de controle de fluxo, ou seja retorna true ou false e isso vai decidir o caminho que a nota terá no processo.
# Muito provavelmente um CO solicitará a você uma tarefa que verifique se a nota está vencida ou não, se estiver seguir para uma tratativa manual, se não estiver, seguir o fluxo normalmente, isso significa em você criar uma regra de processo que retorna true ou false, true se não estiver vencida e false se estiver vencida.
# Para isso vamos usar o método Date.today para encontrar a data atual e comparar com a data de vencimento da nota.

processable = process_instance.processable

return true if processable.net_due_date&.< Date.today

return false