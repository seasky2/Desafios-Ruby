# DESAFIO 20 - (ScriptRule) Manipulação de arrays
# 
# CONTEXTO:
# 
# Você precisa criar uma lista com todos os códigos NCM dos itens da nota e preencher em um campo customizado da nota fiscal, para isso você deve criar uma regra de execução de processo,
# que aglomera os códigos NCM e preenche o campo customizado.
# Remova duplicatas e ordene alfabeticamente
# Se a nota tiver menos de 2 NCMS retorne false e não preencha o campo customizado, se tiver mais de 2 NCMS retorne true e preencha o campo customizado.

processable = process_instance.processable

ncms = processable.invoice_items.pluck(:ncm).compact.uniq

if ncms.size >= 2
  processable.cf_ncms = ncms.sort.join(" - ")
  message "NCMS: #{processable.cf_ncms}"
  processable.save!(validate: false)
  
  return true
end

processable.save!(validate: false)

return false