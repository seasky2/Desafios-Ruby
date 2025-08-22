# Desafio 7: Análise de Dados de Fornecedores

# CONTEXTO:

# Você precisa analisar dados de fornecedores no sistema V360.
# Os dados estão em formato de hash e você deve usar iteradores para extrair informações e gerar relatórios específicos.

# PARÂMETROS:

# fornecedores = {
#      "12345678000195" => {nome: "Tech Solutions", categoria: "tecnologia", ativo: true, faturamento: 150000},
#      "23456789000196" => {nome: "Logistica Express", categoria: "transporte", ativo: false, faturamento: 80000},
#      "34567890000197" => {nome: "Construção Forte", categoria: "construção", ativo: true, faturamento: 200000},
#      "45678901000198" => {nome: "Serviços Gerais", categoria: "serviços", ativo: true, faturamento: 120000},
#      "56789012000199" => {nome: "Materiais Prime", categoria: "materiais", ativo: false, faturamento: 90000}
# }

# RESULTADO ESPERADO:

# Total de fornecedores: 5
# CNPJs: ["12345678000195", "23456789000196", "34567890000197", "45678901000198", "56789012000199"]
# Nomes dos fornecedores ativos: ["Tech Solutions", "Construção Forte", "Serviços Gerais"]
# Faturamento total dos ativos: R$ 470000
# Primeiro fornecedor com faturamento > 150000: 3456789000197 - Construção Forte
# Todos têm faturamento > 50000? true

# OBSERVAÇÕES E DICAS:

# Hashes retornam [chave, valor] nos iteradores.
# Use destructuring (|cnpj, dados|) para facilitar a leitura.
# select + map permite filtrar e transformar em sequência.
# finde retorna o primeiro par [chave, valor] correspondente.

# ESPAÇO PARA SUA SOLUÇÃO:

fornecedores = {
    "12345678000195" => {nome: "Tech Solutions", categoria: "tecnologia", ativo: true, faturamento: 150000},
    "23456789000196" => {nome: "Logistica Express", categoria: "transporte", ativo: false, faturamento: 80000},
    "34567890000197" => {nome: "Construção Forte", categoria: "construção", ativo: true, faturamento: 200000},
    "45678901000198" => {nome: "Serviços Gerais", categoria: "serviços", ativo: true, faturamento: 120000},
    "56789012000199" => {nome: "Materiais Prime", categoria: "materiais", ativo: false, faturamento: 90000}
}

total_fornecedores = fornecedores.size
cnpjs = fornecedores.keys
fornecedores_ativos = fornecedores.select {|_, dados| dados[:ativo]}.map {|_, dados| dados[:nome]}
faturamento_ativos = fornecedores.select {|_, dados| dados[:ativo]}.sum {|_, dados| dados[:faturamento]}
faturamento_maior_150k = fornecedores.find {|_, dados| dados[:faturamento] > 150000}
todos_maior_50k = fornecedores.all? {|_, dados| dados[:faturamento] > 50000}

puts "Total de fornecedores: #{total_fornecedores}\n" \
     "CNPJs: #{cnpjs}\n" \
     "Nomes dos fornecedores ativos: #{fornecedores_ativos}\n" \
     "Faturamento total dos ativos: R$ #{faturamento_ativos}\n" \
     "Primeiro fornecedor com faturamento > 150000: #{faturamento_maior_150k[0]} - #{faturamento_maior_150k[1][:nome]}\n" \
     "Todos têm faturamento > 50000? #{todos_maior_50k}"