# DESAFIO 34 - Assign Task (Assign de usuários baseado em regras)

# CONTEXTO:

# Você precisa atribuir a tratativa da nota para diferentes usuários baseado em regras de negócio:
# - Notas > R$ 50.000: grupo "Diretoria"
# - Notas de serviço: grupo "Fiscal"
# - Notas normais: usuário autor dessa nota

# DICAS:

# - Use Vportal::UserGroup.find_by(name: 'nome_do_grupo')
# - Use Vportal::User.find_by(email: 'email@domain.com')
# - Retorne o usuário ou grupo encontrado

processable = process_instance.processable

if processable.total_value > 50000
  return Vportal::UserGroup.find_by(name: "FUNCIONAIS - Diretoria")
elsif processable.type == "Vinvoice::ServiceInvoice"
  return Vportal::UserGroup.find_by(name: "[FUNCIONAIS] - Grupo Fiscal")
else
  return processable.authorable
end