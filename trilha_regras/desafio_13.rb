# DESAFIO 13 - Filtrar itens por condição

# CONTEXTO:

# Você precisa filtrar os itens de uma nota fiscal que têm valor superior a 1000, e retornar a descrição de todos os itens que atendem a essa condição
# Exiba quantos itens foram encontrados e suas descrições"

processable = process_instance.processable

itens_encontrados = processable.invoice_items.select { |item| item.total_value > 1000 }
descricao = itens_encontrados.map(&:description)

if itens_encontrados.any?
    message "Foram encontrados #{itens_encontrados.count} itens com valor superior a 1000. Os itens são:\n" \
            "#{descricao.join(';\n')}."
else
    message "Nenhum item encontrado com valor superior a 1000."
end