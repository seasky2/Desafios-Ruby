# DESAFIO 06 - Verificar se nota tem impostos

# Você precisa verificar se uma nota fiscal possui impostos e exibir quais estão presentes.
# Verifique os seguintes impostos: icms_value, ipi_value, iss_value, pis_value, cofins_value, etc, esse é o padrão de nomenclatura para o valor dos impostos
# Se o valor for maior que zero, considere que o imposto está presente"

processable = process_instance.processable

impostos = {
    icms: processable.icms_value.to_f > 0 ? processable.icms_value.to_f : nil,
    icms_st: processable.icms_st_value.to_f > 0 ? processable.icms_st_value.to_f : nil,
    ipi: processable.ipi_value.to_f > 0 ? processable.ipi_value.to_f : nil,
    fcp_st: processable.fcp_st_value.to_f > 0 ? processable.fcp_st_value.to_f : nil
}.compact

if impostos.any?
    message "Impostos presentes:"
    impostos.each do |nome, valor|
        message "- #{nome.upcase}: R$ #{'%.2f' % valor}"
    end
else
    message "Nenhum imposto presente."
end