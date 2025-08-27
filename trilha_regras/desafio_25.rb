# DESAFIO 25 - Script Rule (Preencher campo customizado para visualizar resumo da nota)
# 
# CONTEXTO:
# 
# O CO solicitou a criação de uma regra de execução de processo que preenche um campo customizado com um resumo da nota fiscal, contendo os primeiros 3 digitos do numéro da nota,
# seguidos da série da mesma: Digitos do número - Série
# Crie o campo customizado, e construa essa regra.
# Lembre-se de sempre pensar nas exceções..."

processable = process_instance.processable

if processable.number.present? && processable.series.present?
  resumo_nota = "#{processable.number[0..2]}-#{processable.series}"
  processable.cf_resumo_nota = resumo_nota
  processable.save!(validate: false)

  return true
end

return false