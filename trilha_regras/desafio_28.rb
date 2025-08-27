# DESAFIO 28 - Process Rule (Permissão de visibilidade de campos)

# CONTEXTO

# O CO solicitou que você construa uma regra para que um usuário só possa ver os itens da nota fiscal caso ele seja o fornecedor daquela nota , ou o autor da nota.
# Para isso você deve criar uma regra de processo, que faz essa verificação (retornando true ou false), e adicionar essa permissão no campo de permissão de visibilidade de campos.

processable = process_instance.processable

current_user = Vportal::User.current()

return true if VcommercialPartnerRegistration::CommercialPartnerUser.where(user_id: current_user.id).any?

return true if current_user == processable.authorable

return false