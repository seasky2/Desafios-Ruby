# DESAFIO 41 - Validação de prazo de vencimento por região

# CONTEXTO:

# O CO solicitou uma validação que verifique se o prazo de vencimento da nota fiscal está dentro do limite permitido por região. Para isso, ele 
# disponibilizou uma tabela customizada: Vportal::CustomTable.fetch('custom_table_21893b0ea7329f272b64'), com as colunas: estado_do_tomador,
# prazo_maximo_dias, ativo. A validação deve verificar se a diferença entre a data de vencimento e a data atual não excede o prazo máximo configurado
# para o estado do cliente. Se o estado não estiver na tabela ou se o registro não estiver ativo, deve usar um prazo padrão de 30 dias.
# A validação deve retornar false se o prazo for excedido informando a divergência.

