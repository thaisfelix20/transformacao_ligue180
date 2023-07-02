CREATE OR REPLACE TABLE
  transformed_files._29_NOVA_TABELA_Sexodosuspeito AS
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
  CASE
    WHEN `Sexodosuspeito` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Sexodosuspeito` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Sexodosuspeito` = 'Masculino' THEN 'MASCULINO'
    WHEN `Sexodosuspeito` = 'Feminino' THEN 'FEMININO'
    WHEN `Sexodosuspeito`= 'INTERSEXO ' THEN 'INTERSEXO'
    WHEN `Sexodosuspeito`= 'NÃO SE APLICA - VÍTIMA COMUNIDADE/FAMÍLIA' THEN 'NÃO INFORMADO'
    WHEN `Sexodosuspeito`= 'Não informado' THEN 'NÃO INFORMADO'
  ELSE
  `Sexodosuspeito`
END
  AS `Sexodosuspeito`,
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
  tcc-project-thais.transformed_files._28_NOVA_TABELA_NaturezaJuridicadoSuspeito