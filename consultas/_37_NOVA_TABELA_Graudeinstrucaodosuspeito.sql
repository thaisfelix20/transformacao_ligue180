CREATE OR REPLACE TABLE
  transformed_files._37_NOVA_TABELA_Graudeinstrucaodosuspeito AS
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
  CASE
    WHEN `Graudeinstrucaodosuspeito` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Graudeinstrucaodosuspeito` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Graudeinstrucaodosuspeito` = 'undefined' THEN 'NÃO INFORMADO'
    WHEN `Graudeinstrucaodosuspeito` = 'Não informado' THEN 'NÃO INFORMADO'
    WHEN `Graudeinstrucaodosuspeito` = 'Ensino Fundamental completo' THEN 'FUNDAMENTAL COMPLETO'
    WHEN `Graudeinstrucaodosuspeito` = 'Ensino Superior completo' THEN 'SUPERIOR COMPLETO'

    WHEN `Graudeinstrucaodosuspeito` = 'Ensino Fundamental incompleto' THEN 'FUNDAMENTAL INCOMPLETO'
    WHEN `Graudeinstrucaodosuspeito` = 'Ensino Superior incompleto' THEN 'SUPERIOR INCOMPLETO'
    WHEN `Graudeinstrucaodosuspeito` = 'Mestrado' THEN 'MESTRADO'
    WHEN `Graudeinstrucaodosuspeito` = 'Doutorado' THEN 'DOUTORADO'
    WHEN `Graudeinstrucaodosuspeito` = 'Especialização' THEN 'ESPECIALIZAÇÃO'
    WHEN `Graudeinstrucaodosuspeito` = 'Analfabeto(a)' THEN 'ANALFABETO(A)'
    WHEN `Graudeinstrucaodosuspeito` = 'ANALFABETO' THEN 'ANALFABETO(A)'
    WHEN `Graudeinstrucaodosuspeito` = 'Ensino Médio completo' THEN 'ENSINO MÉDIO COMPLETO'
    WHEN `Graudeinstrucaodosuspeito` = 'Ensino Médio incompleto' THEN 'ENSINO MÉDIO INCOMPLETO'
    WHEN `Graudeinstrucaodosuspeito` = 'ENSINO FUNDAMENTAL COMPLETO' THEN 'FUNDAMENTAL COMPLETO'
    WHEN `Graudeinstrucaodosuspeito` = 'ENSINO FUNDAMENTAL INCOMPLETO' THEN 'FUNDAMENTAL INCOMPLETO'
    WHEN `Graudeinstrucaodosuspeito` = 'ANALFABETO/SEM INSTRUÇÃO' THEN 'ANALFABETO(A)' 
  ELSE
  `Graudeinstrucaodosuspeito`
END
  AS `Graudeinstrucaodosuspeito`,
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
  tcc-project-thais.transformed_files._36_NOVA_TABELA_Profissaodosuspeito