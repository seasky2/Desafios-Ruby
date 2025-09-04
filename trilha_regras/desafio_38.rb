# DESAFIO 38 - Validação complexa de taxes

# CONTEXTO:

# Você precisa validar a consistência dos impostos. Para cada imposto, verifique:
# - Se há valor, deve haver base de cálculo
# - Se há alíquota, deve haver base de cálculo
# - O valor deve ser coerente com base × alíquota
# Caso a nota esteja correta ela segue o fluxo normalmente, caso não esteja ela deve ser enviada para uma tarefa de Análise - Divergências - FUNCIONAIS | ID(1621).

def check_tax(name, base, rate, value)
  base = base.to_f
  rate = rate.to_f
  value = value.to_f

  # Se há valor ou alíquota, deve haver base de cálculo
  if (value.positive? || rate.positive?) && base.zero?
    return "#{name}: valor/alíquota sem base."
  end

  # O valor deve ser coerente com base × alíquota
  calculated_value = (base * rate / 100).round(2)
  tolerance = 0.01
  if value.positive? && (value - calculated_value).abs > tolerance
    return "#{name}: valor inconsistente (#{value} vs esperado #{calculated_value})"
  end

  nil
end

def check_all_taxes(processable)
  taxes = {
    "ISS" => [:iss_base_value, :iss_tax_rate, :iss_value],
    "PIS" => [:pis_base_value, :pis_tax_rate, :pis_value],
    "COFINS" => [:cofins_base_value, :cofins_tax_rate, :cofins_value],
    "CSLL" => [:csll_base_value, :csll_tax_rate, :csll_value],
    "IR" => [:ir_base_value, :ir_tax_rate, :ir_value],
    "INSS" => [:inss_base_value, :inss_tax_rate, :inss_value]
  }

  errors = []

  taxes.each do |name, (tax_base, tax_rate, tax_value)|
    base  = processable.send(tax_base)
    rate  = processable.send(tax_rate)
    value = processable.send(tax_value)

    error = check_tax(name, base, rate, value)
    errors << error if error
  end

  errors
end

processable = process_instance.processable
errors = check_all_taxes(processable)

new_status = Vprocessmanager::Status.find_by(identifier: 'status_45a15d7cd11d0ffcbd32')
task_definition = Vprocessmanager::TaskDefinition.find_by(identifier: 'task_definition_9b0b029e22ac4aaa203c')

if errors.empty?
  return true
else
  process_instance.change_status_and_instantiate_new_task(new_status, task_definition, nil)
end