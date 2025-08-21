# Desafio 4: Cálculo de juros por atraso em nota fiscal

# CONTEXTO:

# Você deve criar um sistema para calcular o valor atualizado de uma nota fiscal com base no atraso no pagamento.
# O sistema deve comparar a data de vencimento da nota com a data atual e aplicar juros compostos de 5% ao dia sobre o valor acumulado.

# PARâMETROS:

# valor_da_nota = 1000.0
# data_de_vencimento = "2025-07-22".to_date
# data_atual = Date.today

# RESULTADO ESPERADO:

# Atraso de X dias. Valor com juros: R$ XXXX.XX

# OBSERVAÇÕES E DICAS:

# Use round(2) para manter duas casas decimais no valor final.
# Use if/else para verificar se a data atual é maior que a data de vencimento.
# Desafio Extra: Modifique os parâmetros da data de vencimento e crie um controle de retorno caso a nota não esteja vencida.

# ESPAÇO PARA SUA SOLUÇÃO:

require 'date'

valor_da_nota = 1000.0
data_de_vencimento = Date.parse("2025-07-22")
data_atual = Date.today

if data_atual > data_de_vencimento
  dias_atrasados = (data_atual - data_de_vencimento).to_i
  valor_final = valor_da_nota * (1 + 0.05) ** dias_atrasados
  puts "Atraso de #{dias_atrasados} dias. Valor com juros: R$ #{valor_final.round(2)}"
else
  dias_atrasados = 0
  puts "A nota não está vencida. Valor atual: R$ #{valor_da_nota.round(2)}" 
end