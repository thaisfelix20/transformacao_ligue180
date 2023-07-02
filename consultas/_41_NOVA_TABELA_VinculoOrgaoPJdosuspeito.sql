CREATE OR REPLACE TABLE
  transformed_files._41_NOVA_TABELA_VinculoOrgaoPJdosuspeito AS
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
  Faixaderendadosuspeito,
  CASE
    WHEN `VinculoOrgaoPJdosuspeito` IS NULL THEN 'NÃO INFORMADO'
    WHEN `VinculoOrgaoPJdosuspeito` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `VinculoOrgaoPJdosuspeito` = 'SEM INFOMAÇÃO' THEN 'NÃO INFORMADO'
  ELSE
  `VinculoOrgaoPJdosuspeito`
END
  AS `VinculoOrgaoPJdosuspeito`,
  sl_suspeito_ramo,
  violacao,
  Grupovulneravel,
  Pais_da_Vitima,
  Pais_do_suspeito
FROM
  tcc-project-thais.transformed_files._40_NOVA_TABELA_Faixaderendadosuspeito