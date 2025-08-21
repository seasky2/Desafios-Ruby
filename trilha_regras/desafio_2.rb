# DESAFIO 02 - Acessar informações básicas da nota fiscal

# CONTEXTO:

# Você precisa acessar e exibir as seguintes informações de uma nota fiscal:
# - Número da nota (.number)
# - Série da nota (.series)
# - Data de emissão (.issue_date)
# - CNPJ do fornecedor (.supplier_identification_number)
# Use o método message() para exibir cada informação em uma linha separada"	

processable = process_instance.processable

message "Número da nota: #{processable.number}\n" \
        "Série da nota: #{processable.series}\n" \
        "Data de emissão: #{processable.issue_date}\n" \
        "CNPJ do fornecedor: #{processable.supplier_identification_number}"