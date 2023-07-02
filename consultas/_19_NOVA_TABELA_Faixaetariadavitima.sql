CREATE OR REPLACE TABLE
  transformed_files._19_NOVA_TABELA_Faixaetariadavitima AS
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
  CASE
    WHEN `Faixaetariadavitima` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Faixaetariadavitima` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Faixaetariadavitima` = '31 a 35 anos' THEN '30 a 39 ANOS'
    WHEN `Faixaetariadavitima` = '25 A 29 ANOS' THEN '20 a 29 ANOS'
    WHEN `Faixaetariadavitima` = '20 a 24 anos' THEN '20 a 29 ANOS'
    WHEN `Faixaetariadavitima` = '70 A 74 ANOS' THEN '70 a 79 ANOS'
    WHEN `Faixaetariadavitima` = '65 a 69 anos' THEN '60 a 69 ANOS'
    WHEN `Faixaetariadavitima` = '60 a 64 anos' THEN '60 a 69 ANOS'
    WHEN `Faixaetariadavitima` = '11 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '07 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '08 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '05 a 09 anos' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '10 a 11 anos' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '60 A 64 ANOS' THEN '60 a 69 ANOS'
    WHEN `Faixaetariadavitima` = 'MENOS DE 01 ANO' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '07 A 09 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '36 a 40 anos' THEN '30 a 39 ANOS'
    WHEN `Faixaetariadavitima` = '12 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '71 a 75 anos' THEN '70 a 79 ANOS'
    WHEN `Faixaetariadavitima` = '8 a 11 anos' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '7 A 9 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '4 a 7 anos' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '2 A 4 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '50 A 54 ANOS' THEN '50 a 59 ANOS'
    WHEN `Faixaetariadavitima` = 'NÃO INFORMADO' THEN 'NÃO INFORMADO'
    WHEN `Faixaetariadavitima` = '40 A 44 ANOS' THEN '40 a 49 ANOS'
    WHEN `Faixaetariadavitima` = '05 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = 'CRIANÇA/ADOLESCENTE IDADE NÃO INFORMADA' THEN 'NÃO INFORMADO'
    WHEN `Faixaetariadavitima` = '45 A 49 ANOS' THEN '40 a 49 ANOS'
    WHEN `Faixaetariadavitima` = '12 a 14 anos' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '80 A 84 ANOS' THEN '80 a 89 ANOS'
    WHEN `Faixaetariadavitima` = '01 ANO' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '05 A 06 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '18 a 24 anos' THEN '20 a 29 ANOS'
    WHEN `Faixaetariadavitima` = '51 a 55 anos' THEN '50 a 59 ANOS'
    WHEN `Faixaetariadavitima` = '66 a 70 anos' THEN '60 a 69 ANOS'
    WHEN `Faixaetariadavitima` = 'VIDA INTRAUTERINA' THEN 'VIDA INTRAUTERINA'
    WHEN `Faixaetariadavitima` = '0 a 3 anos' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '55 a 59 anos' THEN '50 a 59 ANOS'
    WHEN `Faixaetariadavitima` = '65 A 69 ANOS' THEN '60 a 69 ANOS'
    WHEN `Faixaetariadavitima` = '18 A 19 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '14 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '25 a 30 anos' THEN '20 a 29 ANOS'
    WHEN `Faixaetariadavitima` = '15 A 17 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '10 A 11 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '91 anos ou mais' THEN '90 a 99 ANOS'
    WHEN `Faixaetariadavitima` = '85 a 90 anos' THEN '80 a 89 ANOS'
    WHEN `Faixaetariadavitima` = '81 a 85 anos' THEN '80 a 89 ANOS'
    WHEN `Faixaetariadavitima` = '55 A 59 ANOS' THEN '50 a 59 ANOS'
    WHEN `Faixaetariadavitima` = '25 a 29 anos' THEN '20 a 29 ANOS'
    WHEN `Faixaetariadavitima` = '35 a 39 anos' THEN '30 a 39 ANOS'
    WHEN `Faixaetariadavitima` = '40 a 44 anos' THEN '40 a 49 ANOS'
    WHEN `Faixaetariadavitima` = '18 a 19 anos' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '85 A 89 ANOS' THEN '80 a 89 ANOS'
    WHEN `Faixaetariadavitima` = '70 a 74 anos' THEN '70 a 79 ANOS'
    WHEN `Faixaetariadavitima` = '16 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '15 a 17 anos' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '02 a 04 anos' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '46 a 50 anos' THEN '40 a 49 ANOS'
    WHEN `Faixaetariadavitima` = '30 A 34 ANOS' THEN '30 a 39 ANOS'
    WHEN `Faixaetariadavitima` = '75 A 79 ANOS' THEN '70 a 79 ANOS'
    WHEN `Faixaetariadavitima` = '15 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '00 A 01 ANO' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '41 a 45 anos' THEN '40 a 49 ANOS'
    WHEN `Faixaetariadavitima` = '17 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '76 a 80 anos' THEN '70 a 79 ANOS'
    WHEN `Faixaetariadavitima` = '61 a 65 anos' THEN '60 a 69 ANOS'
    WHEN `Faixaetariadavitima` = '35 A 39 ANOS' THEN '30 a 39 ANOS'
    WHEN `Faixaetariadavitima` = '50 a 54 anos' THEN '50 a 59 ANOS'
    WHEN `Faixaetariadavitima` = '45 a 49 anos' THEN '40 a 49 ANOS'
    WHEN `Faixaetariadavitima` = '30 a 34 anos' THEN '30 a 39 ANOS'
    WHEN `Faixaetariadavitima` = '80 anos ou mais' THEN '80 a 89 ANOS'
    WHEN `Faixaetariadavitima` = '75 a 79 anos' THEN '70 a 79 ANOS'
    WHEN `Faixaetariadavitima` = '13 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '04 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '09 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '06 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '03 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '00 a 1 ano' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = '10 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '20 A 24 ANOS' THEN '20 a 29 ANOS'
    WHEN `Faixaetariadavitima` = '90+' THEN '90 a 99 ANOS'
    WHEN `Faixaetariadavitima` = '12 A 14 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadavitima` = '02 A 04 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = 'RECÉM NASCIDO (ATÉ 90 DIAS ? 3 MESES)' THEN 'RECÉM-NASCIDO'
    WHEN `Faixaetariadavitima` = '56 a 60 anos' THEN '50 a 59 ANOS'
    WHEN `Faixaetariadavitima` = 'IDOSO IDADE NÃO INFORMADA' THEN 'NÃO INFORMADO'
    WHEN `Faixaetariadavitima` = '02 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadavitima` = 'RECÉM-NASCIDO (ATÉ 28 DIAS)' THEN 'RECÉM-NASCIDO'
    WHEN `Faixaetariadavitima` = 'NASCITURO' THEN 'VIDA INTRAUTERINA'
  ELSE
  `Faixaetariadavitima`
END
  AS `Faixaetariadavitima`,
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
  Grupovulneravel,
  Pais_da_Vitima,
  Pais_do_suspeito
FROM
  tcc-project-thais.transformed_files._18_NOVA_TABELA_Orientacaosexualdavitima