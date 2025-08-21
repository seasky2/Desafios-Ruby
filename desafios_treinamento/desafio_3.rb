# Desafio 3: Cálculos de Impostos e Validações Financeiras

# CONTEXTO:

# Você precisa processar uma nota fiscal e calcular os impostos devidos, considerando ICMS = 18% , Desconto = 5% e Parcelamento em 3x para o pagamento.

# PARÂMETROS:

# valor_base = "10000.00"

# RESULTADO ESPERADO:

# Valor total da nota: R$ 11300.00
# Valor do ICMS: R$ 1800.00
# Valor do desconto: R$ 500.00
# Valor por parcela: R$ 3766.67

# OBSERVAÇÕES E DICAS:

# O ICMS e o desconto são calculados sobre o valor base da nota.
# Se atente a pegadinhas, use o .to_f para conversão.
# Arredonde e formate os valores conforme padrão esperado.

# ESPAÇO PARA SUA SOLUÇÃO:

valor_base = "10000.00"

valor_icms = valor_base.to_f * 0.18
valor_desconto = valor_base.to_f * 0.05
valor_total = valor_base.to_f + valor_icms - valor_desconto
valor_parcelas = (valor_total.to_f) / 3

mensagem = "Valor total da nota: R$ #{'%.2f' % valor_total}\n" \
           "Valor do ICMS: R$ #{'%.2f' % valor_icms}\n" \
           "Valor do desconto: R$ #{'%.2f' % valor_desconto}\n" \
           "Valor por parcela: R$ #{valor_parcelas.round(2)}"

puts mensagem