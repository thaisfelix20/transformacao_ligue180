CREATE OR REPLACE TABLE
  transformed_files._31_NOVA_TABELA_Faixaetariadosuspeito AS
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
  CASE
    WHEN `Faixaetariadosuspeito` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Faixaetariadosuspeito` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Faixaetariadosuspeito` = '31 a 35 anos' THEN '30 a 39 ANOS'
    WHEN `Faixaetariadosuspeito` = '25 A 29 ANOS' THEN '20 a 29 ANOS'
    WHEN `Faixaetariadosuspeito` = '20 a 24 anos' THEN '20 a 29 ANOS'
    WHEN `Faixaetariadosuspeito` = '70 A 74 ANOS' THEN '70 a 79 ANOS'
    WHEN `Faixaetariadosuspeito` = '65 a 69 anos' THEN '60 a 69 ANOS'
    WHEN `Faixaetariadosuspeito` = '60 a 64 anos' THEN '60 a 69 ANOS'
    WHEN `Faixaetariadosuspeito` = '11 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '07 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '08 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '05 a 09 anos' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '10 a 11 anos' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '60 A 64 ANOS' THEN '60 a 69 ANOS'
    WHEN `Faixaetariadosuspeito` = 'MENOS DE 01 ANO' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '07 A 09 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '36 a 40 anos' THEN '30 a 39 ANOS'
    WHEN `Faixaetariadosuspeito` = '12 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '71 a 75 anos' THEN '70 a 79 ANOS'
    WHEN `Faixaetariadosuspeito` = '8 a 11 anos' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '7 A 9 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '4 a 7 anos' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '2 A 4 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '50 A 54 ANOS' THEN '50 a 59 ANOS'
    WHEN `Faixaetariadosuspeito` = 'NÃO INFORMADO' THEN 'NÃO INFORMADO'
    WHEN `Faixaetariadosuspeito` = '40 A 44 ANOS' THEN '40 a 49 ANOS'
    WHEN `Faixaetariadosuspeito` = '05 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = 'CRIANÇA/ADOLESCENTE IDADE NÃO INFORMADA' THEN 'NÃO INFORMADO'
    WHEN `Faixaetariadosuspeito` = '45 A 49 ANOS' THEN '40 a 49 ANOS'
    WHEN `Faixaetariadosuspeito` = '12 a 14 anos' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '80 A 84 ANOS' THEN '80 a 89 ANOS'
    WHEN `Faixaetariadosuspeito` = '01 ANO' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '05 A 06 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '18 a 24 anos' THEN '20 a 29 ANOS'
    WHEN `Faixaetariadosuspeito` = '51 a 55 anos' THEN '50 a 59 ANOS'
    WHEN `Faixaetariadosuspeito` = '66 a 70 anos' THEN '60 a 69 ANOS'
    WHEN `Faixaetariadosuspeito` = 'VIDA INTRAUTERINA' THEN 'VIDA INTRAUTERINA'
    WHEN `Faixaetariadosuspeito` = '0 a 3 anos' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '55 a 59 anos' THEN '50 a 59 ANOS'
    WHEN `Faixaetariadosuspeito` = '65 A 69 ANOS' THEN '60 a 69 ANOS'
    WHEN `Faixaetariadosuspeito` = '18 A 19 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '14 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '25 a 30 anos' THEN '20 a 29 ANOS'
    WHEN `Faixaetariadosuspeito` = '15 A 17 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '10 A 11 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '91 anos ou mais' THEN '90 a 99 ANOS'
    WHEN `Faixaetariadosuspeito` = '85 a 90 anos' THEN '80 a 89 ANOS'
    WHEN `Faixaetariadosuspeito` = '81 a 85 anos' THEN '80 a 89 ANOS'
    WHEN `Faixaetariadosuspeito` = '55 A 59 ANOS' THEN '50 a 59 ANOS'
    WHEN `Faixaetariadosuspeito` = '25 a 29 anos' THEN '20 a 29 ANOS'
    WHEN `Faixaetariadosuspeito` = '35 a 39 anos' THEN '30 a 39 ANOS'
    WHEN `Faixaetariadosuspeito` = '40 a 44 anos' THEN '40 a 49 ANOS'
    WHEN `Faixaetariadosuspeito` = '18 a 19 anos' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '85 A 89 ANOS' THEN '80 a 89 ANOS'
    WHEN `Faixaetariadosuspeito` = '70 a 74 anos' THEN '70 a 79 ANOS'
    WHEN `Faixaetariadosuspeito` = '16 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '15 a 17 anos' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '02 a 04 anos' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '46 a 50 anos' THEN '40 a 49 ANOS'
    WHEN `Faixaetariadosuspeito` = '30 A 34 ANOS' THEN '30 a 39 ANOS'
    WHEN `Faixaetariadosuspeito` = '75 A 79 ANOS' THEN '70 a 79 ANOS'
    WHEN `Faixaetariadosuspeito` = '15 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '00 A 01 ANO' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '41 a 45 anos' THEN '40 a 49 ANOS'
    WHEN `Faixaetariadosuspeito` = '17 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '76 a 80 anos' THEN '70 a 79 ANOS'
    WHEN `Faixaetariadosuspeito` = '61 a 65 anos' THEN '60 a 69 ANOS'
    WHEN `Faixaetariadosuspeito` = '35 A 39 ANOS' THEN '30 a 39 ANOS'
    WHEN `Faixaetariadosuspeito` = '50 a 54 anos' THEN '50 a 59 ANOS'
    WHEN `Faixaetariadosuspeito` = '45 a 49 anos' THEN '40 a 49 ANOS'
    WHEN `Faixaetariadosuspeito` = '30 a 34 anos' THEN '30 a 39 ANOS'
    WHEN `Faixaetariadosuspeito` = '80 anos ou mais' THEN '80 a 89 ANOS'
    WHEN `Faixaetariadosuspeito` = '75 a 79 anos' THEN '70 a 79 ANOS'
    WHEN `Faixaetariadosuspeito` = '13 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '04 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '09 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '06 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '03 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '00 a 1 ano' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = '10 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '20 A 24 ANOS' THEN '20 a 29 ANOS'
    WHEN `Faixaetariadosuspeito` = '90+' THEN '90 a 99 ANOS'
    WHEN `Faixaetariadosuspeito` = '12 A 14 ANOS' THEN '10 a 19 ANOS'
    WHEN `Faixaetariadosuspeito` = '02 A 04 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = 'RECÉM NASCIDO (ATÉ 90 DIAS ? 3 MESES)' THEN 'RECÉM-NASCIDO'
    WHEN `Faixaetariadosuspeito` = '56 a 60 anos' THEN '50 a 59 ANOS'
    WHEN `Faixaetariadosuspeito` = 'IDOSO IDADE NÃO INFORMADA' THEN 'NÃO INFORMADO'
    WHEN `Faixaetariadosuspeito` = '02 ANOS' THEN '0 a 9 ANOS'
    WHEN `Faixaetariadosuspeito` = 'Nascituro' THEN 'VIDA INTRAUTERINA'
    WHEN `Faixaetariadosuspeito` = '00 - Recém-nascido' THEN 'RECÉM-NASCIDO'    

  ELSE
  `Faixaetariadosuspeito`
END
  AS `Faixaetariadosuspeito`,
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
  tcc-project-thais.transformed_files._30_NOVA_TABELA_Orientacaosexualdosuspeito