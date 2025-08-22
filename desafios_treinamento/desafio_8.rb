# Desafio 8: Processamento Complexo de Documentos

# CONTEXTO:

# Você recebeu uma lista de documentos fiscais no sistema V360. Cada documento é um hash com informações completas.
# Você deve processar esses dados usando múltiplos iteradores e gerar relatórios detalhados combinando arrays e hashes.

# PARÂMETROS:

# documentos = [
#    {id: 1, tipo: "NFe", valor: 1500, status: "aprovado", fornecedor: "Tech Solutions", categoria: "tecnologia"},
#    {id: 2, tipo: "CTe", valor: 800, status: "pendente", fornecedor: "Logística Express", categoria: "transporte"},
#    {id: 3, tipo: "NFe", valor: 2200, status: "aprovado", fornecedor: "Construção Forte", categoria: "construção"},
#    {id: 4, tipo: "CTe", valor: 1200, status: "rejeitado", fornecedor: "Serviços Gerais", categoria: "serviços"},
#    {id: 5, tipo: "NFe", valor: 3500, status: "aprovado", fornecedor: "Materiais Prime", categoria: "materiais"},
#    {id: 6, tipo: "CTe", valor: 900, status: "pendente", fornecedor: "Logística Express", categoria: "transporte"}
# ]

# RESULTADO ESPERADO:

# Documentos aprovados com valor > 2000:
# ID: 3, Valor: R$ 2200, Fornecedor: Construção Forte
# ID: 5, Valor: R$ 3500, Fornecedor: Materiais Prime

# Valor total por categoria (aprovados):
# tecnologia: R$ 1500
# construção: R$ 2200
# materiais: R$ 3500

# Fornecedores com documentos pendentes: ["Logística Express"]

# Existe documento de construção rejeitado? false

# OBSERVAÇÕES E DICAS:

# Use o .each para acessar cada hash (documento) dentro do array (documentos)
# Para acessar um atributo de um documento faça: documentos[:status] == "aprovado"
# Use operadores racionais para condições multiplas: documento[:status] == "aprovado" && documento[:valor] > 2000
# Crie um novo Array para armazenar os documentos que atendam as questões propostas
# Utilize .uniq para remover documentos duplicados dentro do Array

# ESPAÇO PARA SUA SOLUÇÃO:

documentos = [
   {id: 1, tipo: "NFe", valor: 1500, status: "aprovado", fornecedor: "Tech Solutions", categoria: "tecnologia"},
   {id: 2, tipo: "CTe", valor: 800, status: "pendente", fornecedor: "Logística Express", categoria: "transporte"},
   {id: 3, tipo: "NFe", valor: 2200, status: "aprovado", fornecedor: "Construção Forte", categoria: "construção"},
   {id: 4, tipo: "CTe", valor: 1200, status: "rejeitado", fornecedor: "Serviços Gerais", categoria: "serviços"},
   {id: 5, tipo: "NFe", valor: 3500, status: "aprovado", fornecedor: "Materiais Prime", categoria: "materiais"},
   {id: 6, tipo: "CTe", valor: 900, status: "pendente", fornecedor: "Logística Express", categoria: "transporte"}
]

aprovados = documentos.select {|documento| documento[:status] == "aprovado"}
pendentes = documentos.select {|documento| documento[:status] == "pendente"}
rejeitados = documentos.select {|documento| documento[:status] == "rejeitado"}

if aprovados.any?
     if aprovados.any? {|aprovado| aprovado[:valor] > 2000}
          puts "Documentos aprovados com valor > 2000:"
          aprovados.each do |aprovado|
               if aprovado[:valor] > 2000
                    puts "ID #{aprovado[:id]}, Valor: R$ #{aprovado[:valor]}, Fornecedor: #{aprovado[:fornecedor]}"
               end
          end
     else
          puts "Nenhum documento aprovado com valor > 2000."
     end
     puts ""
     puts "Valor total por categoria (aprovados):"
     aprovados.each do |aprovado|
          puts "#{aprovado[:categoria]}: R$ #{aprovado[:valor]}"
     end
else
     puts "Nenhum documento aprovado."
end
puts ""
if pendentes.any?
     puts "Fornecedores com documentos pendentes: #{pendentes.first[:fornecedor]}"
else
     puts "Nenhum fornecedor com documentos pendentes."
end
puts ""
if rejeitados.any?
     puts "Existe documento de construção rejeitado? #{rejeitados.any? {|rejeitado| rejeitado[:categoria] == "construção"}}"
else
     puts "Nenhum documento rejeitado."
end