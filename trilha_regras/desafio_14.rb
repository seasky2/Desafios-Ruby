# DESAFIO 14 - Calcular percentual de impostos

# CONTEXTO:

# Você precisa calcular o percentual que os impostos representam em relação ao valor total da nota.
# Some todos os impostos: icms_value, ipi_value, iss_value, pis_value, cofins_value, etc, esse é o padrão de nomenclatura para o valor dos impostos
# Calcule o percentual em relação ao total_value
# Exiba o resultado com 2 casas decimais e verifique se o percentual é maior que 10%, se for retorne true, se não for retorne false, se não for possível calcular o percentual retorne false"

processable = process_instance.processable

soma_impostos = [
  processable.icms_value.to_f,
  processable.icms_st_value.to_f,
  processable.ipi_value.to_f,
  processable.fcp_st_value.to_f,
].sum

percentual_impostos = (soma_impostos / processable.total_value.to_f) * 100

message "Percentual de impostos: #{percentual_impostos.round(2)}%."

if percentual_impostos > 10
  return true
elsif percentual_impostos <= 10
  return false
else
  return false
end