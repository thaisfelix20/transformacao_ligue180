CREATE OR REPLACE TABLE
  transformed_files._13_NOVA_TABELA_Iniciodasviolacoes AS
SELECT
  Datadecadastro,
  Canaldeatendimento,
  Cenariodaviolacao,
  Denunciaemergencial,
  Denunciante,
  Pais,
  UF,  
  Frequencia,
  CASE
    WHEN `Iniciodasviolacoes` is null THEN 'NÃO INFORMADO'
    WHEN `Iniciodasviolacoes` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Iniciodasviolacoes` = 'NÃO SE APLICA' THEN 'NÃO INFORMADO'

  ELSE
  `Iniciodasviolacoes`
  END
  AS `Iniciodasviolacoes`,
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
  tcc-project-thais.transformed_files._12_NOVA_TABELA_UF