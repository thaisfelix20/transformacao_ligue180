CREATE OR REPLACE TABLE
  transformed_files._25_NOVA_TABELA_RacaCordavitima AS
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
  CASE
    WHEN `RacaCordavitima` IS NULL THEN 'NÃO INFORMADO'
    WHEN `RacaCordavitima` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `RacaCordavitima` = 'SEM DECLARAÇÃO' THEN 'NÃO INFORMADO'

    WHEN `RacaCordavitima` = 'Amarela' THEN 'AMARELA'
    WHEN `RacaCordavitima` = 'Preta' THEN 'PRETA'
    WHEN `RacaCordavitima` = 'Não informado' THEN 'NÃO INFORMADO'
    WHEN `RacaCordavitima` = 'Indígena' THEN 'INDÍGENA'
    WHEN `RacaCordavitima` = 'Branca' THEN 'BRANCA'
    WHEN `RacaCordavitima` = 'Parda' THEN 'PARDA'

  ELSE
  `RacaCordavitima`
END
  AS `RacaCordavitima`,
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
  tcc-project-thais.transformed_files._24_NOVA_TABELA_Graudeinstrucaodavitima