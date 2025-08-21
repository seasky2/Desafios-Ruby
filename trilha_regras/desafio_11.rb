# DESAFIO 11 - Acessar informações do fornecedor

# CONTEXTO:

# Você precisa acessar e exibir informações completas do fornecedor de uma nota fiscal.
# Exiba: razão social, CNPJ, email, endereço e estado"

processable = process_instance.processable

message "Informações do fornecedor:\n" \
        "Razão Social: #{processable.supplier_legal_name}\n" \
        "CNPJ: #{processable.supplier_identification_number}\n" \
        "Email: #{processable.supplier_email}\n" \
        "Endereço: #{processable.supplier_city}\n" \
        "Estado: #{processable.supplier_city.state.abbreviation}"