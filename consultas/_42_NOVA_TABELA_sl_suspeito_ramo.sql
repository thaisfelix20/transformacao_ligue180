CREATE OR REPLACE TABLE
  transformed_files._42_NOVA_TABELA_sl_suspeito_ramo AS
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
  VinculoOrgaoPJdosuspeito,
  CASE
    WHEN `sl_suspeito_ramo` IS NULL THEN 'NÃO INFORMADO'
    WHEN `sl_suspeito_ramo` = 'N/D' THEN 'NÃO INFORMADO'
  ELSE
  `sl_suspeito_ramo`
END
  AS `sl_suspeito_ramo`,
  violacao,
  Grupovulneravel,
  Pais_da_Vitima,
  Pais_do_suspeito
FROM
  tcc-project-thais.transformed_files._41_NOVA_TABELA_VinculoOrgaoPJdosuspeito