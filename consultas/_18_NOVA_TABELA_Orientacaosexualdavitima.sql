CREATE OR REPLACE TABLE
  transformed_files._18_NOVA_TABELA_Orientacaosexualdavitima AS
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
  CASE
    WHEN `Orientacaosexualdavitima` is null THEN 'NÃO INFORMADO'
    WHEN `Orientacaosexualdavitima`= 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Orientacaosexualdavitima`= 'Não informado' THEN 'NÃO INFORMADO'
    WHEN `Orientacaosexualdavitima`= 'NÃO' THEN 'NÃO INFORMADO'
    WHEN `Orientacaosexualdavitima`= 'Bissexual' THEN 'BISSEXUAL'
    WHEN `Orientacaosexualdavitima`= 'HOMOSSEXUAL.LÉSBICA' THEN 'HOMOSSEXUAL'
    WHEN `Orientacaosexualdavitima`= 'Lésbica' THEN 'HOMOSSEXUAL'
    WHEN `Orientacaosexualdavitima`= 'Gay' THEN 'HOMOSSEXUAL'
    WHEN `Orientacaosexualdavitima`= 'HOMOSSEXUAL.GAY' THEN 'HOMOSSEXUAL'
    WHEN `Orientacaosexualdavitima`= 'Heterossexual ' THEN 'HETEROSSEXUAL'
    WHEN `Orientacaosexualdavitima`= 'PESSOA TRANS.TRANSGÊNERO' THEN 'TRANSGÊNERO'
    WHEN `Orientacaosexualdavitima`= 'PESSOA TRANS.TRANSEXUAL' THEN 'TRANSEXUAL'
    WHEN `Orientacaosexualdavitima`= 'Transexual' THEN 'TRANSEXUAL'
    WHEN `Orientacaosexualdavitima`= 'PESSOA TRANS.TRAVESTI' THEN 'TRAVESTI'
    WHEN `Orientacaosexualdavitima`= 'Travesti' THEN 'TRAVESTI'    
  ELSE
  `Orientacaosexualdavitima`
  END
  AS `Orientacaosexualdavitima`,
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
  tcc-project-thais.transformed_files._17_NOVA_TABELA_Sexodavitima