CREATE OR REPLACE TABLE
  transformed_files._33_NOVA_TABELA_Doencararadosuspeito AS
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
  CASE
    WHEN `Doencararadosuspeito` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Doencararadosuspeito` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Doencararadosuspeito` = 'POSSUI OUTRA DOENÇA RARA NÃO LISTADA ABAIXO' THEN 'POSSUI OUTRA DOENÇA RARA NÃO LISTADA'

    WHEN `Doencararadosuspeito` = 'TEM DOENÇA RARA MAS NÃO SABE QUAL' THEN 'POSSUI DOENÇA RARA, MAS NÃO SABE QUAL'

    WHEN `Doencararadosuspeito` = 'NÃO' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO TEM DOENÇA RARA' THEN 'NÃO POSSUI DOENÇA RARA'

    WHEN `Doencararadosuspeito` = 'SIM' THEN 'TEM DEFICIÊNCIA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;DEFICIÊNCIA INTELECTUAL' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;DIABETE INSÍPIDO' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;POSSUI OUTRA DOENÇA RARA NÃO LISTADA' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;POSSUI DOENÇA RARA, MAS NÃO SABE QUAL' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;DOENÇA DE CROHN' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;LÚPUS ERITEMATOSO SISTÊMICO' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;LÚPUS ERITEMATOSO SISTÊMICO;POSSUI OUTRA DOENÇA RARA NÃO LISTADA' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;POLIMIOSITE' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;ATROFIA MUSCULAR ESPINHAL' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;SÍNDROME DE GUILLAIN-BARRÉ' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;ARTRITE REUMATOIDE;DIABETE INSÍPIDO' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;ARTRITE REUMATOIDE' THEN 'NÃO POSSUI DOENÇA RARA'
    WHEN `Doencararadosuspeito` = 'NÃO POSSUI DOENÇA RARA;ANEMIA FALCIFORME' THEN 'NÃO POSSUI DOENÇA RARA'

  ELSE
  `Doencararadosuspeito`
END
  AS `Doencararadosuspeito`,
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
  tcc-project-thais.transformed_files._32_NOVA_TABELA_Deficienciadosuspeito