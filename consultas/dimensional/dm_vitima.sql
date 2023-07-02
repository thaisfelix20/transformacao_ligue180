CREATE OR REPLACE TABLE
  tcc-project-thais.star_schema.dm_vitima AS
SELECT
  GENERATE_UUID() AS sk_Vitima,
  Id_vitima,
  Relacaovitimasuspeito,
  Sexodavitima,
  Orientacaosexualdavitima,
  Faixaetariadavitima,
  Deficienciadavitima,
  Doencararadavitima,
  UFdavitima,
  Profissaodavitima,
  Graudeinstrucaodavitima,
  RacaCordavitima,
  Etniadavitima,
  Faixaderendadavitima,
  Pais_da_Vitima
FROM
  tcc-project-thais.transformed_files._47_NOVA_TABELA_ids_vitima_e_suspeito 