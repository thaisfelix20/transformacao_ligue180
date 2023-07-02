CREATE OR REPLACE TABLE
  transformed_files._24_NOVA_TABELA_Graudeinstrucaodavitima AS
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
  CASE
    WHEN `Graudeinstrucaodavitima` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Graudeinstrucaodavitima` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Graudeinstrucaodavitima` = 'Não informado' THEN 'NÃO INFORMADO'
    WHEN `Graudeinstrucaodavitima` = 'Ensino Fundamental completo' THEN 'FUNDAMENTAL COMPLETO'
    WHEN `Graudeinstrucaodavitima` = 'Ensino Superior completo' THEN 'SUPERIOR COMPLETO'

    WHEN `Graudeinstrucaodavitima` = 'Ensino Fundamental incompleto' THEN 'FUNDAMENTAL INCOMPLETO'
    WHEN `Graudeinstrucaodavitima` = 'Ensino Superior incompleto' THEN 'SUPERIOR INCOMPLETO'
    WHEN `Graudeinstrucaodavitima` = 'Mestrado' THEN 'MESTRADO'
    WHEN `Graudeinstrucaodavitima` = 'Doutorado' THEN 'DOUTORADO'
    WHEN `Graudeinstrucaodavitima` = 'Especialização' THEN 'ESPECIALIZAÇÃO'
    WHEN `Graudeinstrucaodavitima` = 'Analfabeto(a)' THEN 'ANALFABETO(A)'
    WHEN `Graudeinstrucaodavitima` = 'ANALFABETO' THEN 'ANALFABETO(A)'
    WHEN `Graudeinstrucaodavitima` = 'Ensino Médio completo' THEN 'ENSINO MÉDIO COMPLETO'
    WHEN `Graudeinstrucaodavitima` = 'Ensino Médio incompleto' THEN 'ENSINO MÉDIO INCOMPLETO'
    WHEN `Graudeinstrucaodavitima` = 'ENSINO FUNDAMENTAL COMPLETO' THEN 'FUNDAMENTAL COMPLETO'
    WHEN `Graudeinstrucaodavitima` = 'ENSINO FUNDAMENTAL INCOMPLETO' THEN 'FUNDAMENTAL INCOMPLETO'
    WHEN `Graudeinstrucaodavitima` = 'ANALFABETO/SEM INSTRUÇÃO' THEN 'ANALFABETO(A)'    
  ELSE
  `Graudeinstrucaodavitima`
END
  AS `Graudeinstrucaodavitima`,
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
  tcc-project-thais.transformed_files._23_NOVA_TABELA_Profissaodavitima