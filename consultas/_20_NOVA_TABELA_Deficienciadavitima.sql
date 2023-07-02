CREATE OR REPLACE TABLE
  transformed_files._20_NOVA_TABELA_Deficienciadavitima AS
SELECT
  Datadecadastro,
  Canaldeatendimento,
  Cenariodaviolacao,
  Denunciaemergencial,
  Denunciante,
  Pais,
  UF,
  Frequencia,
  Iniciodasviolacoes,
  sl_quantidade_vitimas,
  Motivacao,
  Relacaovitimasuspeito,
  Sexodavitima,
  Orientacaosexualdavitima,
  Faixaetariadavitima,
  CASE
    WHEN `Deficienciadavitima` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Deficienciadavitima` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Deficienciadavitima` = 'NÃO' THEN 'NÃO TEM DEFICIÊNCIA'
    WHEN `Deficienciadavitima` = 'SIM' THEN 'TEM DEFICIÊNCIA'
  ELSE
  `Deficienciadavitima`
END
  AS `Deficienciadavitima`,
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
  Grupovulneravel,
  Pais_da_Vitima,
  Pais_do_suspeito
FROM
  tcc-project-thais.transformed_files._19_NOVA_TABELA_Faixaetariadavitima