CREATE TABLE
  transformed_files._05_NOVA_TABELA_datadecadastro AS
SELECT
  CAST(PARSE_DATE('%Y-%m-%d', SUBSTR(Datadecadastro, 1, 10)) AS DATE) AS Datadecadastro,
  Canaldeatendimento,
  Denunciaemergencial,
  Denunciante,
  Cenariodaviolacao,
  Pais,
  UF,
  Frequencia,
  Iniciodasviolacoes,
  sl_quantidade_vitimas,
  Grupovulneravel,
  Motivacao,
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
  NaturezaJuridicadoSuspeito,
  Sexodosuspeito,
  Orientacaosexualdosuspeito,
  Faixaetariadosuspeito,
  Deficienciadosuspeito,
  Doencararadosuspeito,
  Suspeitopreso,
  UFdosuspeito,
  Profissaodosuspeito,
  Graudeinstrucaodosuspeito,
  RacaCordosuspeito,
  SuspeitoEtnia,
  Faixaderendadosuspeito,
  VinculoOrgaoPJdosuspeito,
  sl_suspeito_ramo,
  violacao,
  Pais_da_Vitima,
  Pais_do_suspeito
FROM
  tcc-project-thais.transformed_files._04_NOVA_TABELA_Pais_do_suspeito