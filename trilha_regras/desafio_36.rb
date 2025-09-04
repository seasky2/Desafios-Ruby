#DESAFIO 36 - JOB Remove Fornecedor Duplicado

# CONTEXTO:

# Por conta de um erro na consulta de fornecedores, foram gerados fornecedores duplicados no portal, para isso o CO responsável por aquele ambiente,
# solicitou uma rotina customizada que removesse todos os fornecedores que estivessem com o status de inativo no portal.
# Faça isso em uma TestRule e peça seu padrinho para validar e te explicar como configurar um JOB no portal.

fornecedores_inativos = VcommercialPartnerRegistration::CommercialPartner.where(type: 'VcommercialPartnerRegistration::Supplier', active: false)

fornecedores_inativos.in_batches(of: 100) do |fornecedor|
  fornecedor.destroy
end