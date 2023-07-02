CREATE TABLE
  tcc-project-thais.star_schema.dm_tipoViolacao AS
WITH
  valores_unicos AS (
  SELECT
    DISTINCT violacao,
  FROM
    tcc-project-thais.transformed_files._47_NOVA_TABELA_ids_vitima_e_suspeito ),
  violacao AS (
  SELECT
    GENERATE_UUID() AS sk_tipoViolacao,
    violacao
  FROM
    valores_unicos )
SELECT
  *
FROM
  violacao