CREATE OR REPLACE TABLE
  transformed_files._38_NOVA_TABELA_RacaCordosuspeito AS
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
  CASE
    WHEN `RacaCordosuspeito` IS NULL THEN 'NÃO INFORMADO'
    WHEN `RacaCordosuspeito` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `RacaCordosuspeito` = 'SEM DECLARAÇÃO' THEN 'NÃO INFORMADO'
    WHEN `RacaCordosuspeito` = 'Amarela' THEN 'AMARELA'
    WHEN `RacaCordosuspeito` = 'Preta' THEN 'PRETA'
    WHEN `RacaCordosuspeito` = 'Não informado' THEN 'NÃO INFORMADO'
    WHEN `RacaCordosuspeito` = 'Indígena' THEN 'INDÍGENA'
    WHEN `RacaCordosuspeito` = 'Branca' THEN 'BRANCA'
    WHEN `RacaCordosuspeito` = 'Parda' THEN 'PARDA'
    WHEN `RacaCordosuspeito` = 'INDÍGENA ' THEN 'INDÍGENA' 
  ELSE
  `RacaCordosuspeito`
END
  AS `RacaCordosuspeito`,
  SuspeitoEtnia,
  Faixaderendadosuspeito,
  VinculoOrgaoPJdosuspeito,
  sl_suspeito_ramo,
  violacao,
  Grupovulneravel,
  Pais_da_Vitima,
  Pais_do_suspeito
FROM
  tcc-project-thais.transformed_files._37_NOVA_TABELA_Graudeinstrucaodosuspeito