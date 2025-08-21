# Desafio 6: Processamento de Lista de Documentos

# CONTEXTO:

# Você trabalha no sistema V360 e recebeu uma lista de valores de documentos fiscais. Precisa processar esses valores usando arrays e iteradores para gerar relatórios.

# PARÂMETROS:

# valores_documentos = [1500, 800, 2200, 1200, 3500, 900, 1800, 2500]

# RESULTADO ESPERADO:

# Total de documentos: 8
# Valor total: R$ 14400
# Documentos acima de R$ 2000: [2200, 3500, 2500]
# Primeiro documento acima de R$ 2000: R$ 2200
# Existe documento acima de R$ 3000? true

# ESPAÇO PARA SUA SOLUÇÃO:

valores_documentos = [1500, 800, 2200, 1200, 3500, 900, 1800, 2500]

total_documentos = valores_documentos.size
valor_total = valores_documentos.sum
documentos_acima_2000 = valores_documentos.select {|valor| valor > 2000}
primeiro_acima_2000 = documentos_acima_2000.first
existe_acima_3000 = valores_documentos.any? {|valor| valor > 3000}

puts "Total de documentos: #{total_documentos};\n" \
     "Valor total: R$ #{valor_total};\n" \
     "Documentos acima de R$ 2000: #{documentos_acima_2000};\n" \
     "Primeiro documento acima de R$ 2000: R$ #{primeiro_acima_2000};\n" \
     "Existe documento acima de R$ 3000? #{existe_acima_3000}."