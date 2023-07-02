CREATE OR REPLACE TABLE
  transformed_files._17_NOVA_TABELA_Sexodavitima AS
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
  CASE
    WHEN `Sexodavitima` is null THEN 'NÃO INFORMADO'
    WHEN `Sexodavitima`= 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Sexodavitima`= 'Masculino' THEN 'MASCULINO'
    WHEN `Sexodavitima`= 'Feminino' THEN 'FEMININO'
    WHEN `Sexodavitima`= 'NI' THEN 'NÃO INFORMADO'
    WHEN `Sexodavitima`= 'NÃO SE APLICA - VÍTIMA COMUNIDADE/FAMÍLIA' THEN 'NÃO INFORMADO'
    WHEN `Sexodavitima`= 'Não informado' THEN 'NÃO INFORMADO'
    
  ELSE
  `Sexodavitima`
  END
  AS `Sexodavitima`,
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
  Grupovulneravel,
  Pais_da_Vitima,
  Pais_do_suspeito
FROM
  tcc-project-thais.transformed_files._16_NOVA_TABELA_Relacaovitimasuspeito