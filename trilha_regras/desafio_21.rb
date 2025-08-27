# DESAFIO 21 - Process Rule (Contar ocorrências)

# CONTEXTO:

# Você precisa contar quantas vezes cada CST aparece em uma nota fiscal
# Caso seja mais de 1 CST, retorne false, se for 1 CST retorne true

processable = process_instance.processable

csts = processable.invoice_items.pluck(:cst)

if csts.uniq.size > 1
  return false
end

return true