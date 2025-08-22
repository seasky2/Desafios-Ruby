# DESAFIO 10 - Verificar data de vencimento

# CONTEXTO:

# Você precisa verificar se uma nota fiscal tem data de vencimento e se ela já passou.
# Compare com a data atual usando Date.today
# Exiba uma mensagem informativa sobre o status

processable = process_instance.processable

if processable.net_due_date.nil?
    message "A nota fiscal não possui data de vencimento."
else
    if processable.net_due_date < Date.today
        message "A nota fiscal está vencida desde #{processable.net_due_date}."
    else
        message "A nota fiscal está dentro do prazo. Data de vencimento: #{processable.net_due_date}."
    end
end