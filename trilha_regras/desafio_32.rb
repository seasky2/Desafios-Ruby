# DESAFIO 32 - Possible Value (Buscar dados em tabela customizada)

# CONTEXTO:

# Você precisa consultar a base manual: Vportal::CustomTable.fetch('custom_table_5597260cf639f177bd30') para buscar dados da LC116, essa base contem os campos: codigo_lc116 e descricao_lc116
# - Código da LC116
# - Descrição da LC116
# Para isso você deve criar uma regra de possible value, que busca os dados da LC116 e retorna os dados em um array,
# onde o primeiro elemento é o que o usuário verá para escolha é a descrição da LC116 e o segundo é o código da LC116 que será salvo no banco de dados.
# É recomendado entrar em contato com algum funcional para uma explicação mais detalhada sobre esse desafio para maior aprendizado.

Vportal::CustomTable.fetch('custom_table_5597260cf639f177bd30').map do |lc116|
  [lc116.descricao_lc116, lc116.codigo_lc116]
end