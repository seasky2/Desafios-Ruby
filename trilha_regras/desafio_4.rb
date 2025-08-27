# DESAFIO 04 - Verificar tipo de nota fiscal

# CONTEXTO:

# Você precisa verificar o tipo de uma nota fiscal e exibir uma mensagem adequada.
# O tipo da nota está disponível em: processable.type
# Exiba uma mensagem amigável para cada tipo"

processable = process_instance.processable

case processable.type
when 'Vinvoice::MaterialInvoice'
  message "A nota fiscal é de material."
when 'Vinvoice::ServiceInvoice'
  message "A nota fiscal é de serviço."
when 'Vinvoice::TransportationInvoice'
  message "A nota fiscal é de transporte."
when 'Vinvoice::TransportationOtherServicesInvoice'
  message "A nota fiscal é de transporte de outros serviços."
when 'Vinvoice::WaterInvoice'
  message "A nota fiscal é de concessonária de água."
when 'Vinvoice::ElectricityInvoice'
  message "A nota fiscal é de concessonária de eletricidade."
when 'Vinvoice::GasInvoice'
  message "A nota fiscal é de concessonária de gás."
when 'Vinvoice::TelecomInvoice'
  message "A nota fiscal é de telecomunicações."
when 'Vinvoice::UtilityInvoice'
  message "A nota fiscal é de utilidade pública."
when 'Vinvoice::OtherInvoice'
  message "A nota fiscal é de outro tipo."
else
  message "Tipo de nota fiscal desconhecido."
end