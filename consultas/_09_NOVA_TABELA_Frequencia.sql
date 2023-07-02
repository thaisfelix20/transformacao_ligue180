CREATE OR REPLACE TABLE
  transformed_files._09_NOVA_TABELA_Frequencia AS
SELECT
  Datadecadastro,
  Canaldeatendimento,
  Cenariodaviolacao,
  Denunciaemergencial,
  Denunciante,
  Pais,
  UF,
  CASE
    WHEN `Frequencia` = 'Mensalmente' THEN 'MENSALMENTE'
    WHEN `Frequencia` = 'Ocasionalmente' THEN 'OCASIONALMENTE'
    WHEN `Frequencia` = 'Única vez' THEN 'ÚNICA OCORRÊNCIA'
    WHEN `Frequencia` = 'Semanalmente' THEN 'SEMANALMENTE'
    WHEN `Frequencia` = 'Diariamente' THEN 'DIARIAMENTE'
    WHEN `Frequencia` = 'Toda tarde' THEN 'TODA TARDE'
    WHEN `Frequencia` = 'Toda manhã' THEN 'TODA MANHÃ'
    WHEN `Frequencia` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Frequencia` = 'Não informado' THEN 'NÃO INFORMADO'
    WHEN `Frequencia` is null THEN 'NÃO INFORMADO'
    WHEN `Frequencia` = 'Quinzenalmente' THEN 'QUINZENALMENTE'
  ELSE
  `Frequencia`
END
  AS `Frequencia`,
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
  tcc-project-thais.transformed_files._08_NOVA_TABELA_Pais