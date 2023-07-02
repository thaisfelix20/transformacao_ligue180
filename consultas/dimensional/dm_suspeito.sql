CREATE TABLE
  tcc-project-thais.star_schema.dm_suspeito AS
SELECT
  GENERATE_UUID() AS sk_Suspeito,
  Id_suspeito,
  NaturezaJuridicadoSuspeito,
  Sexodosuspeito,
  Orientacaosexualdosuspeito,
  Faixaetariadosuspeito,
  Deficienciadosuspeito,
  Doencararadosuspeito,
  Suspeitopreso,
  Pais_do_suspeito,
  UFdosuspeito,
  Profissaodosuspeito,
  Graudeinstrucaodosuspeito,
  RacaCordosuspeito,
  SuspeitoEtnia,
  Faixaderendadosuspeito,
  VinculoOrgaoPJdosuspeito,
  sl_suspeito_ramo
FROM
  tcc-project-thais.transformed_files._47_NOVA_TABELA_ids_vitima_e_suspeito