CREATE OR REPLACE TABLE
  transformed_files._26_NOVA_TABELA_Etniadavitima AS
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
  CASE
    WHEN `Etniadavitima` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Etniadavitima` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Etniadavitima` = 'QUILOMBOLA' THEN 'QUILOMBOLAS'

    WHEN `Etniadavitima` = 'POVOS INDÍGENAS' THEN 'INDÍGENA'
    WHEN `Etniadavitima` = 'POVOS CIGANOS' THEN 'CIGANA'
    WHEN `Etniadavitima` = 'COMUNIDADES QUILOMBOLAS' THEN 'QUILOMBOLAS'

  ELSE
  `Etniadavitima`
END
  AS `Etniadavitima`,
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
  tcc-project-thais.transformed_files._25_NOVA_TABELA_RacaCordavitima