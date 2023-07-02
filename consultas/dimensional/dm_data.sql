CREATE TABLE
  tcc-project-thais.star_schema.dm_data AS
WITH
  valores_unicos AS (
  SELECT
    Datadecadastro
  FROM
    UNNEST(GENERATE_DATE_ARRAY('2019-01-01', '2023-12-31', INTERVAL 1 DAY)) AS Datadecadastro ),
  datas AS (
  SELECT
    GENERATE_UUID() AS sk_Datadecadastro,
    Datadecadastro,
    EXTRACT(YEAR
    FROM
      Datadecadastro) AS ANO,
    EXTRACT(MONTH
    FROM
      Datadecadastro) AS MES,
    EXTRACT(DAY
    FROM
      Datadecadastro) AS DIA
  FROM
    valores_unicos )
SELECT
  *
FROM
  datas