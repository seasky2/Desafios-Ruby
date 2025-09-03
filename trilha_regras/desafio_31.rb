# DESAFIO 31 - Validation Rule (Validar impostos de itens com CFOP 5933)

# CONTEXTO:

# O CO solicitou que você construa uma validação para notas de serviço: itens com CFOP 5933 devem ter apenas ISS, PIS e COFINS. Outros impostos não são permitidos.
# Você deve determinar o tipo da regra que será criada, mas saiba que o cliente quer ver o motivo que a nota dele possa estar divergente.
# Verifique se não pode ser mais de uma regra, qual tarefa deve ser criada, e como deve ser feita essa demanda.

# DICAS:

# - Filtre itens por CFOP específico
# - Verifique se apenas os impostos permitidos estão presentes
# - Considere que impostos com valor zero ou nulo são considerados ""não presentes""

processable = process_instance.processable
invoice_items = processable.invoice_items

possui_iss = []
possui_pis = []
possui_cofins = []

if !invoice_items.any?
  message "Nenhum item encontrado."
  return false
else
  invoice_items.each do |item|
    if item.cfop == '5933'
      if item.iss_value.present? || item.iss_value > 0
        possui_iss << item.description
      end
      if item.pis_value.present? || item.pis_value > 0
        possui_pis << item.description
      end
      if item.cofins_value.present? || item.cofins_value > 0
        possui_cofins << item.description
      end
    end
  end
end

if possui_iss.any? || possui_pis.any? || possui_cofins.any?
  message "Itens com CFOP 5933 devem ter apenas ISS, PIS e COFINS.\n" \
          "Itens com ISS: #{possui_iss&.join(', ') || 'Nenhum'}\n" \
          "Itens com PIS: #{possui_pis&.join(', ') || 'Nenhum'}\n" \
          "Itens com COFINS: #{possui_cofins&.join(', ') || 'Nenhum'}"
  return false
end

return true