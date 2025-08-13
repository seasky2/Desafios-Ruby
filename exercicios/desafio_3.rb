# Desafio 3: Cálculos de Impostos e Validações Financeiras

# Parâmetros disponíveis:
valor_base = "10000.00"

# ESPAÇO PARA SUA SOLUÇÃO:

valor_icms = valor_base.to_f * 0.18
valor_desconto = valor_base.to_f * 0.05
valor_total = valor_base.to_f + valor_icms - valor_desconto
valor_parcelas = (valor_total.to_f) / 3

mensagem = "Valor total da nota: R$ #{'%.2f' % valor_total}\n" \
           "Valor do ICMS: R$ #{'%.2f' % valor_icms}\n" \
           "Valor do desconto: R$ #{'%.2f' % valor_desconto}\n" \
           "Valor por parcela: R$ #{valor_parcelas.round(2)}"

puts mensagem