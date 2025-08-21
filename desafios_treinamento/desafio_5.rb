# Desafio 5: Validação Simples de Fluxo

# CONTEXTO:

# Você precisa contruir uma regra que determina o fluxo que uma nota fiscal vai seguir no V360.
# Com base no tipo da nota fiscal, você deve redirecionar corretamente para o fluxo correspondente.

# PARÂMETROS:

# tipo_da_nota_1 = "Vinvoice::MaterialInvoice"
# tipo_da_nota_2 = "Vinvoice::TransportationInvoice"
# tipo_da_nota_3 = "Vinvoice::ServiceInvoice"

# RESULTADO ESPERADO:

# FLUXO DE MATERIAL
# FLUXO DE TRANSPORTE
# FLUXO DE SERVIÇO

# OBSERVAÇÕES E DICAS:

# Utilize if/elsif/else ou case para fazer a verificação.
# Apenas escreva a lógica dentro da função validar_nota_fiscal.
# Não modifique os nomes das variáveis ou a estrutura - eles são necessários para a validação automática.

# ESPAÇO PARA SUA SOLUÇÃO:

tipo_da_nota_1 = "Vinvoice::MaterialInvoice"
tipo_da_nota_2 = "Vinvoice::TransportationInvoice"
tipo_da_nota_3 = "Vinvoice::ServiceInvoice"

def validar_nota_fiscal(tipo_da_nota)
  fluxo_da_nota = case tipo_da_nota
  when "Vinvoice::MaterialInvoice"
    fluxo_da_nota = "FLUXO DE MATERIAL"
  when "Vinvoice::TransportationInvoice"
    fluxo_da_nota = "FLUXO DE TRANSPORTE"
  when "Vinvoice::ServiceInvoice"
    fluxo_da_nota = "FLUXO DE SERVIÇO"
  end
  return fluxo_da_nota
end

puts validar_nota_fiscal(tipo_da_nota_1)
puts validar_nota_fiscal(tipo_da_nota_2)
puts validar_nota_fiscal(tipo_da_nota_3)