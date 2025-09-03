-- DESAFIO 42 - SQL (Extração de dados de notas fiscais)

-- CONTEXTO:

-- O CO solicitou que você crie um relatório que exiba dados de notas fiscais de serviço para o cliente ter a volumetria dessas notas.
-- Para isso ele quer que você obtenha apenas das notas fiscais de serviço os seguintes dados:
-- ID da nota
-- Data de emissão
-- CNPJ do fornecedor
-- CNPJ do Tomador
-- IVA
-- Valor total da nota

-- Junto a isso ele deseja que esse relatório possua um filtro para o cliente escolher a data de início e fim da consulta,
-- esse filtro é aplicado sobre a data de emissão da nota fiscal.

SELECT
  td.id AS ID,
  td.issue_date AS Data_de_emissao,
  td.supplier_identification_number AS CNPJ_do_fornecedor,
  td.customer_identification_number AS CNPJ_do_tomador,
  td.iva_value AS IVA,
  td.total_value AS Valor_total_da_nota

FROM
  vinvoice_tax_documents td

WHERE
  td.type = 'Vinvoice::ServiceInvoice'
  AND td.issue_date BETWEEN :data_inicio AND :data_fim

ORDER BY td.issue_date ASC;