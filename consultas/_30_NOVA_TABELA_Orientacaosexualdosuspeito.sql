CREATE OR REPLACE TABLE
  transformed_files._30_NOVA_TABELA_Orientacaosexualdosuspeito AS
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
  CASE
    WHEN `Orientacaosexualdosuspeito` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Orientacaosexualdosuspeito` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Orientacaosexualdosuspeito`= 'Não informado' THEN 'NÃO INFORMADO'
    WHEN `Orientacaosexualdosuspeito`= 'NÃO' THEN 'NÃO INFORMADO'
    WHEN `Orientacaosexualdosuspeito`= 'Bissexual' THEN 'BISSEXUAL'
    WHEN `Orientacaosexualdosuspeito`= 'HOMOSSEXUAL.LÉSBICA' THEN 'HOMOSSEXUAL'
    WHEN `Orientacaosexualdosuspeito`= 'Lésbica' THEN 'HOMOSSEXUAL'
    WHEN `Orientacaosexualdosuspeito`= 'Gay' THEN 'HOMOSSEXUAL'
    WHEN `Orientacaosexualdosuspeito`= 'HOMOSSEXUAL.GAY' THEN 'HOMOSSEXUAL'
    WHEN `Orientacaosexualdosuspeito`= 'Heterossexual ' THEN 'HETEROSSEXUAL'
    WHEN `Orientacaosexualdosuspeito`= 'PESSOA TRANS.TRANSGÊNERO' THEN 'TRANSGÊNERO'
    WHEN `Orientacaosexualdosuspeito`= 'PESSOA TRANS.TRANSEXUAL' THEN 'TRANSEXUAL'
    WHEN `Orientacaosexualdosuspeito`= 'Transexual' THEN 'TRANSEXUAL'
    WHEN `Orientacaosexualdosuspeito`= 'PESSOA TRANS.TRAVESTI' THEN 'TRAVESTI'
    WHEN `Orientacaosexualdosuspeito`= 'Travesti' THEN 'TRAVESTI'

    WHEN `Orientacaosexualdosuspeito`= 'HOMOSSEXUAL.LÉSBICA     ' THEN 'HOMOSSEXUAL'    
    WHEN `Orientacaosexualdosuspeito`= 'HOMOSSEXUAL.LÉSBICA ' THEN 'HOMOSSEXUAL'    
    WHEN `Orientacaosexualdosuspeito`= 'Travesti' THEN 'TRAVESTI'    

  ELSE
  `Orientacaosexualdosuspeito`
END
  AS `Orientacaosexualdosuspeito`,
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
  tcc-project-thais.transformed_files._29_NOVA_TABELA_Sexodosuspeito