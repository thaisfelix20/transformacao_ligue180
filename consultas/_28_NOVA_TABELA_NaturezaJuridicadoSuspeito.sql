CREATE OR REPLACE TABLE
  transformed_files._28_NOVA_TABELA_NaturezaJuridicadoSuspeito AS
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
  CASE
    WHEN `NaturezaJuridicadoSuspeito` IS NULL THEN 'NÃO INFORMADO'
    WHEN `NaturezaJuridicadoSuspeito` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `NaturezaJuridicadoSuspeito` = 'COMUNIDADE' THEN 'COMUNIDADE/FAMÍLIA'
    WHEN `NaturezaJuridicadoSuspeito` = 'FAMÍLIA' THEN 'COMUNIDADE/FAMÍLIA'
  ELSE
  `NaturezaJuridicadoSuspeito`
END
  AS `NaturezaJuridicadoSuspeito`,
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
  tcc-project-thais.transformed_files._27_NOVA_TABELA_Faixaderendadavitima