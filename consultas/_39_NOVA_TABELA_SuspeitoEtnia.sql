CREATE OR REPLACE TABLE
  transformed_files._39_NOVA_TABELA_SuspeitoEtnia AS
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
  CASE
    WHEN `SuspeitoEtnia` IS NULL THEN 'NÃO INFORMADO'
    WHEN `SuspeitoEtnia` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `SuspeitoEtnia` = 'QUILOMBOLA' THEN 'QUILOMBOLAS'

    WHEN `SuspeitoEtnia` = 'POVOS INDÍGENAS' THEN 'INDÍGENA'
    WHEN `SuspeitoEtnia` = 'POVOS CIGANOS' THEN 'CIGANA'
    WHEN `SuspeitoEtnia` = 'COMUNIDADES QUILOMBOLAS' THEN 'QUILOMBOLAS'
  ELSE
  `SuspeitoEtnia`
END
  AS `SuspeitoEtnia`,
  Faixaderendadosuspeito,
  VinculoOrgaoPJdosuspeito,
  sl_suspeito_ramo,
  violacao,
  Grupovulneravel,
  Pais_da_Vitima,
  Pais_do_suspeito
FROM
  tcc-project-thais.transformed_files._38_NOVA_TABELA_RacaCordosuspeito