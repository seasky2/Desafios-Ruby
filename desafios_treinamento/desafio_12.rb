# Desafio 12: Consulta ao Banco de Dados

# CONTEXTO:

# Você vai fazer uma consulta ao banco de dados para relacionar dados entre tabelas.
# Precisamos primeiro buscar o identifier (CNPJ) de um commercial_partner (FORNECEDOR).
# Após isso encontrar a Nota Fiscal que está associada a esse commercial_partner (FORNECEDOR), mostrando o ID e o NÚMERO da nota fiscal como resultado.

# PARÂMETROS:

# id_do_comercial_partner = 17

# RESULTADO ESPERADO:

# Nota fiscal: 12054 - Número da Nota: 3641

# OBSERVAÇÕES E DICAS:

# Utilize o método find_by para achar o fornecedor e depois a nota.
# Utilize o método .identifier no fornecedor encontrado para achar o CNPJ do mesmo.
# Busque a nota fiscal usando o find_by pelo supplier_identification_number.
# No final consulte os dados da nota encontrada, usando o método .id e .number

# ESPAÇO PARA SUA SOLUÇÃO:

id_do_comercial_partner = 17

comercial_partner = VcommercialPartnerRegistration::CommercialPartner.find_by(id: id_do_comercial_partner)

nota = Vinvoice::TaxDocuments.find_by(supplier_identification_number: comercial_partner.identifier)

message "Nota fiscal: #{nota.id} - Número da Nota: #{nota.number}"