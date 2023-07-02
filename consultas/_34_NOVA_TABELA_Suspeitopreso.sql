CREATE OR REPLACE TABLE
  transformed_files._34_NOVA_TABELA_Suspeitopreso AS
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
  CASE
    WHEN `Suspeitopreso` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Suspeitopreso` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Suspeitopreso` = 'PENA (SEMI-ABERTO)   ' THEN 'PENA (SEMI-ABERTO)'
    WHEN `Suspeitopreso` = 'PENA (SEMI-ABERTO) ' THEN 'PENA (SEMI-ABERTO)'
  ELSE
  `Suspeitopreso`
END
  AS `Suspeitopreso`,
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
  tcc-project-thais.transformed_files._33_NOVA_TABELA_Doencararadosuspeito