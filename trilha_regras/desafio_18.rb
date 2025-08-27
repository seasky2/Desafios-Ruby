# DESAFIO 18 - Assing Task (Atribuir tarefa a um Grupo de Usuários)

# CONTEXTO:

# Geralmente o CO irá te solicitar uma tarefa que atribui uma tarefa a um grupo de usuários ou a um usuário em especifico, para isso você deve criar uma regra de processo,
# que busca o grupo Fiscal cadastrado no portal e atribuir a tarefa a eles.

grupo = Vportal::UserGroup.find_by(identifier: "abstract_user_group_63cc7cd50e3d5e286b61")

return grupo