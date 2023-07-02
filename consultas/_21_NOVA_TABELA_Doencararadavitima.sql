CREATE OR REPLACE TABLE
  transformed_files._21_NOVA_TABELA_Doencararadavitima AS
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
  CASE
    WHEN `Doencararadavitima` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Doencararadavitima` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Doencararadavitima` = 'NÃO' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO TEM DOENÇA RARA' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'SIM' THEN 'TEM DEFICIÊNCIA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;DEFICIÊNCIA INTELECTUAL' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;DIABETE INSÍPIDO' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;POSSUI OUTRA DOENÇA RARA NÃO LISTADA' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;POSSUI DOENÇA RARA, MAS NÃO SABE QUAL' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;DOENÇA DE CROHN' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;LÚPUS ERITEMATOSO SISTÊMICO' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;LÚPUS ERITEMATOSO SISTÊMICO;POSSUI OUTRA DOENÇA RARA NÃO LISTADA' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;POLIMIOSITE' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;ATROFIA MUSCULAR ESPINHAL' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;SÍNDROME DE GUILLAIN-BARRÉ' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;ARTRITE REUMATOIDE;DIABETE INSÍPIDO' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;ARTRITE REUMATOIDE' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadavitima` = 'NÃO POSSUI DOENÇA RARA;ANEMIA FALCIFORME' THEN 'NÃO POSSUI DOENÇA RARA'
  ELSE
  `Doencararadavitima`
END
  AS `Doencararadavitima`,
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
  tcc-project-thais.transformed_files._20_NOVA_TABELA_Deficienciadavitima