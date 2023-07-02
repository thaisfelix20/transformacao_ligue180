CREATE OR REPLACE TABLE
  transformed_files._27_NOVA_TABELA_Faixaderendadavitima AS
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
  CASE
    WHEN `Faixaderendadavitima` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Faixaderendadavitima` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Faixaderendadavitima` = '3 A 5 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 2 A 5 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = 'MAIS DE 5 A 10 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = '5 A 15 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = '6 A 15 SM' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = 'SEM RENDIMENTO' THEN 'SEM RENDIMENTO'
    WHEN `Faixaderendadavitima` = '5 A 15 SM' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = '3 A 5 SM ' THEN 'MAIS DE 2 A 5 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = '8 A 15 SM' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = 'ATÉ 1 SM' THEN 'ATÉ 1 SALÁRIO MÍNIMO'
    WHEN `Faixaderendadavitima` = 'MAIS DE 10 A 20 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = '7 A 15 SM' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = 'ATÉ 1/2 SALÁRIO MÍNIMO' THEN 'ATÉ 1 SALÁRIO MÍNIMO'
    WHEN `Faixaderendadavitima` = 'MAIS DE 1/2 A 1 SALÁRIO MÍNIMO' THEN 'ATÉ 1 SALÁRIO MÍNIMO'
    WHEN `Faixaderendadavitima` = '1 A 3 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 1 A 2 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = 'ACIMA DE  15 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = '1 A 3 SM' THEN 'MAIS DE 1 A 2 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = 'ACIMA DE 15 SM' THEN 'MAIS DE 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = 'MAIS DE 20 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadavitima` = '9 A 15 SM' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
  ELSE
  `Faixaderendadavitima`
END
  AS `Faixaderendadavitima`,
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
  tcc-project-thais.transformed_files._26_NOVA_TABELA_Etniadavitima