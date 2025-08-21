# DESAFIO 09 - Auto fill simples

# CONTEXTO:

# Você precisa criar um auto_fill que retorna o número da nota fiscal formatado.
# Para auto_fill, retorne diretamente o valor calculado
# Formate o número como: ""NF-[número]"" (ex: ""NF-123456"")

processable = process_instance.processable

auto_fill = "NF-#{processable.number}"

return auto_fill