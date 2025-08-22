# Desafio 10: Processamento de Documento com Itens

# CONTEXTO:

# Agora você vai trabalhar com a nota fiscal e seus itens de forma mais detalhada.
# Seu objetivo é imprimir as informações básicas da nota e depois listar os itens com suas respectivas descrições e valores totais.

# PARÂMETROS:

# ID do processo: 40425

# RESULTADO ESPERADO:

# Tipo da nota: Vinvoice::MaterialInvoice
# Valor total da nota: R$ 619.5

# Itens da nota:
# PAPEL GRAU CIRURGICO 150CM X100M - R$ 98.0
# PAPEL GRAU CIRURGICO PARA AUTOCLAVE 200MMX100M - R$ 130.0
# DESCARTEX 7 LITROS - R$ 164.0
# INDICADOR BIOLOGICO P/ AUTOCLAVE - R$ 216.0
# GEL PARA ULTRASSOM - R$ 11.5

# OBSERVAÇÕES E DICAS:

# Os itens da nota estão em processable.invoice_items
# Para os atributos, use:
#       .type → tipo da nota fiscal
#       .total_value → valor total (nota ou item)
#       .description → descrição do item
# Use o .each nos itens para percorrer como visto na aula anterior

# ESPAÇO PARA SUA SOLUÇÃO:

processable = process_instance.processable
itens = processable.invoice_items

processable.id = 40425

message "Tipo da nota: #{processable.type}\n" \
        "Valor total da nota: R$ #{processable.total_value}\n\n" \
        "Itens da nota:\n"
        itens.each do |item|
            message "#{item.description} - R$ #{item.total_value.round}"
        end