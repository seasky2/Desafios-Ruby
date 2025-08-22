# Desafio 11: Validação de Fluxo

# CONTEXTO:

# Agora você vai criar uma validação de fluxo para determinar se uma nota fiscal deve seguir para o Fluxo de Aprovação ou para o Fluxo de Validação, com base em seu tipo e valores.

# PARÂMETROS:

# ID do processo 1: 11682 (Material)
# ID do processo 2: 11676 (Material)
# ID do processo 3: 11306 (Serviço)
# ID do processo 4: 11811 (Serviço)

# REGRAS DE FLUXO:

# Se for uma nota de material e o valor total > 10000 → Fluxo de Aprovação a regra retorna → (true)
# Se for uma nota de serviço e o ISS > 100 → Fluxo de Aprovação a regra retorna → (true)
# Caso contrário → Fluxo de Validação a regra retorna → (false)

# RESULTADO ESPERADO:

# Nota de Material (11682)
# Valor total: R$ 170077.69
# Fluxo : Aprovação
# A regra retornou: true

# Nota de Serviço (11811)
# Valor do ISS: R$ 8.7
# Faluxo: Validação
# A regra retornou: false

# OBSERVAÇÕES E DICAS:

# Use if/else para verificar o tipo da nota com .type
# Acesse:
#       .total_value para notas de material
#       .iss_value para notas de serviço
# Use message para imprimir cada passo
# Use o return para encerrar e retornar com o valor booleano da regra (true ou false)

# ESPAÇO PARA SUA SOLUÇÃO:

processable = process_instance.processable
resultado = nil

processable.id = 11682
processable.id = 11676
processable.id = 11306
processable.id = 11811

processable.each do |processable|
    if processable.type == "Vinvoice::MaterialInvoice" && processable.total_value > 10000
        message "Nota de Material (#{processable.id})\n" \
                "Valor total: R$ #{processable.total_value}\n\n" \
                "Fluxo : Aprovação\n" \
                "A regra retornou: true"
        resultado = true
    elsif processable.type == "Vinvoice::ServiceInvoice" && processable.iss_value > 100
        message "Nota de Serviço (#{processable.id})\n" \
                "Valor do ISS: R$ #{processable.iss_value}\n\n" \
                "Fluxo: Aprovação\n" \
                "A regra retornou: true"
        resultado = true
    else
        message "Nota de Material (#{processable.id})\n" \
                "Valor total: R$ #{processable.total_value}\n\n" \
                "Fluxo : Validação\n" \
                "A regra retornou: false"
        resultado false
    end
end

return resultado