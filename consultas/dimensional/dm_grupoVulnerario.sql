CREATE OR REPLACE TABLE
  tcc-project-thais.star_schema.dm_grupoVulnerario AS
With 
valores_unicos as (
SELECT
  DISTINCT Grupovulneravel
FROM
  tcc-project-thais.transformed_files._47_NOVA_TABELA_ids_vitima_e_suspeito
),
grupoVulneravel as (
  SELECT
    GENERATE_UUID() AS sk_GrupoVulnerario,
    Grupovulneravel
  FROM 
    valores_unicos
)

Select *
From grupoVulneravel