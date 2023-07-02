CREATE OR REPLACE TABLE
  transformed_files._40_NOVA_TABELA_Faixaderendadosuspeito AS
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
  SuspeitoEtnia,
  CASE
    WHEN `Faixaderendadosuspeito` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Faixaderendadosuspeito` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Faixaderendadosuspeito` = '3 A 5 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 2 A 5 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = 'MAIS DE 5 A 10 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = '5 A 15 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = '6 A 15 SM' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = 'SEM RENDIMENTO' THEN 'SEM RENDIMENTO'
    WHEN `Faixaderendadosuspeito` = '5 A 15 SM' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = '3 A 5 SM ' THEN 'MAIS DE 2 A 5 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = '8 A 15 SM' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = 'ATÉ 1 SM' THEN 'ATÉ 1 SALÁRIO MÍNIMO'
    WHEN `Faixaderendadosuspeito` = 'MAIS DE 10 A 20 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = '7 A 15 SM' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = 'ATÉ 1/2 SALÁRIO MÍNIMO' THEN 'ATÉ 1 SALÁRIO MÍNIMO'
    WHEN `Faixaderendadosuspeito` = 'MAIS DE 1/2 A 1 SALÁRIO MÍNIMO' THEN 'ATÉ 1 SALÁRIO MÍNIMO'
    WHEN `Faixaderendadosuspeito` = '1 A 3 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 1 A 2 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = 'ACIMA DE  15 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = '1 A 3 SM' THEN 'MAIS DE 1 A 2 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = 'ACIMA DE 15 SM' THEN 'MAIS DE 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = 'MAIS DE 20 SALÁRIOS MÍNIMOS' THEN 'MAIS DE 15 SALÁRIOS MÍNIMOS'
    WHEN `Faixaderendadosuspeito` = '9 A 15 SM' THEN 'MAIS DE 5 A 15 SALÁRIOS MÍNIMOS'

  ELSE
  `Faixaderendadosuspeito`
END
  AS `Faixaderendadosuspeito`,
  VinculoOrgaoPJdosuspeito,
  sl_suspeito_ramo,
  violacao,
  Grupovulneravel,
  Pais_da_Vitima,
  Pais_do_suspeito
FROM
  tcc-project-thais.transformed_files._39_NOVA_TABELA_SuspeitoEtnia