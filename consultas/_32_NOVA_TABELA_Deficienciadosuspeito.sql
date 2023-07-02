CREATE OR REPLACE TABLE
  transformed_files._32_NOVA_TABELA_Deficienciadosuspeito AS
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
  CASE
    WHEN `Deficienciadosuspeito` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Deficienciadosuspeito` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Deficienciadosuspeito` = 'NÃO' THEN 'NÃO TEM DEFICIÊNCIA'
    WHEN `Deficienciadosuspeito` = 'SIM' THEN 'TEM DEFICIÊNCIA'

  ELSE
  `Deficienciadosuspeito`
END
  AS `Deficienciadosuspeito`,
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
  tcc-project-thais.transformed_files._31_NOVA_TABELA_Faixaetariadosuspeito