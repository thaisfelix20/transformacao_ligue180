CREATE OR REPLACE TABLE
  transformed_files._10_NOVA_TABELA_Denunciaemergencial AS
SELECT
  Datadecadastro,
  Canaldeatendimento,
  Cenariodaviolacao,
  CASE
    WHEN `Denunciaemergencial` is null THEN 'NÃO INFORMADO'
    WHEN `Denunciaemergencial` = 'N/D' THEN 'NÃO INFORMADO'

  ELSE
  `Denunciaemergencial`
  END
  AS `Denunciaemergencial`,
  Denunciante,
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
  tcc-project-thais.transformed_files._09_NOVA_TABELA_Frequencia