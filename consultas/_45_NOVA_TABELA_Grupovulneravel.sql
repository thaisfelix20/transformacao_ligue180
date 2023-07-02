CREATE OR REPLACE TABLE
  transformed_files._45_NOVA_TABELA_Grupovulneravel AS
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
  Graudeinstrucaodosuspeito,
  RacaCordosuspeito,
  SuspeitoEtnia,
  Faixaderendadosuspeito,
  VinculoOrgaoPJdosuspeito,
  sl_suspeito_ramo,
  Pais_da_Vitima,
  Pais_do_suspeito,
  CASE
    WHEN `Grupovulneravel` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Grupovulneravel` = '01. OUTRAS VIOLÊNCIAS CONTRA A MULHER' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = '02. VIOLÊNCIA DOMÉSTICA E FAMILIAR CONTRA A MULHER' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = '03. VIOLÊNCIA CONTRA CRIANÇA OU ADOLESCENTE' THEN 'VIOLÊNCIA CONTRA CRIANÇA OU ADOLESCENTE'
    WHEN `Grupovulneravel` = '04. VIOLÊNCIA CONTRA PESSOA IDOSA' THEN 'VIOLÊNCIA CONTRA PESSOA IDOSA'
    WHEN `Grupovulneravel` = '05. VIOLÊNCIA CONTRA PESSOA SOCIALMENTE VULNERÁVEL' THEN 'VIOLÊNCIA CONTRA PESSOA SOCIALMENTE VULNERÁVEL'
    WHEN `Grupovulneravel` = '06. VIOLÊNCIA CONTRA PESSOA COM DEFICIÊNCIA' THEN 'VIOLÊNCIA CONTRA PESSOA COM DEFICIÊNCIA'
    WHEN `Grupovulneravel` = '07. VIOLÊNCIA CONTRA PESSOA EM RESTRIÇÃO DE LIBERDADE' THEN 'VIOLÊNCIA CONTRA PESSOA EM RESTRIÇÃO DE LIBERDADE'
    WHEN `Grupovulneravel` = '08. VIOLÊNCIA CONTRA POPULAÇÃO LGBT' THEN 'VIOLÊNCIA CONTRA POPULAÇÃO LGBT'
    WHEN `Grupovulneravel` = '09. VIOLÊNCIA CONTRA PESSOA EM SITUAÇÃO DE RUA' THEN 'VIOLÊNCIA CONTRA PESSOA SOCIALMENTE VULNERÁVEL'
    WHEN `Grupovulneravel` = '1-Violência Contra a Mulher' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = '10. VIOLAÇÃO DE DIREITOS HUMANOS' THEN 'VIOLAÇÃO DE DIREITOS HUMANOS'
    WHEN `Grupovulneravel` = '2-Violência Doméstica e Familiar Contra a Mulher' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = '3-Violência Contra Criança ou Adolescente' THEN 'VIOLÊNCIA CONTRA CRIANÇA OU ADOLESCENTE'
    WHEN `Grupovulneravel` = '4-Violência Contra Pessoa Idosa' THEN 'VIOLÊNCIA CONTRA PESSOA IDOSA'
    WHEN `Grupovulneravel` = '5-Violência Contra Pessoa Socialmente Vulnerável' THEN 'VIOLÊNCIA CONTRA PESSOA SOCIALMENTE VULNERÁVEL'
    WHEN `Grupovulneravel` = '6-Violência Contra Pessoa com Deficiência' THEN 'VIOLÊNCIA CONTRA PESSOA COM DEFICIÊNCIA'
    WHEN `Grupovulneravel` = '7-Violência Contra Pessoa em Restrição de Liberdade' THEN 'VIOLÊNCIA CONTRA PESSOA EM RESTRIÇÃO DE LIBERDADE'
    WHEN `Grupovulneravel` = '8-Violência Contra População LGBT' THEN 'VIOLÊNCIA CONTRA POPULAÇÃO LGBT'
    WHEN `Grupovulneravel` = '9-Violência Contra Pessoa em Situação de Rua' THEN 'VIOLÊNCIA CONTRA PESSOA SOCIALMENTE VULNERÁVEL'
    WHEN `Grupovulneravel` = 'Não se aplica' THEN 'NÃO INFORMADO'
    WHEN `Grupovulneravel` = 'OUTRAS VIOLÊNCIAS CONTRA A MULHER' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'VIOLAÇÃO DE DIREITOS HUMANOS' THEN 'VIOLAÇÃO DE DIREITOS HUMANOS'
    WHEN `Grupovulneravel` = 'VIOLÊNCIA CONTRA A MULHER' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'VIOLÊNCIA CONTRA CIDADÃO, FAMÍLIA OU COMUNIDADE' THEN 'VIOLÊNCIA CONTRA CIDADÃO, FAMÍLIA OU COMUNIDADE'
    WHEN `Grupovulneravel` = 'VIOLÊNCIA CONTRA CRIANÇA OU ADOLESCENTE' THEN 'VIOLÊNCIA CONTRA CRIANÇA OU ADOLESCENTE'
    WHEN `Grupovulneravel` = 'VIOLÊNCIA CONTRA PESSOA COM DEFICIÊNCIA' THEN 'VIOLÊNCIA CONTRA PESSOA COM DEFICIÊNCIA'
    WHEN `Grupovulneravel` = 'VIOLÊNCIA CONTRA PESSOA EM RESTRIÇÃO DE LIBERDADE' THEN 'VIOLÊNCIA CONTRA PESSOA EM RESTRIÇÃO DE LIBERDADE'
    WHEN `Grupovulneravel` = 'VIOLÊNCIA CONTRA PESSOA EM SITUAÇÃO DE RUA' THEN 'VIOLÊNCIA CONTRA PESSOA SOCIALMENTE VULNERÁVEL'
    WHEN `Grupovulneravel` = 'VIOLÊNCIA CONTRA PESSOA IDOSA' THEN 'VIOLÊNCIA CONTRA PESSOA IDOSA'
    WHEN `Grupovulneravel` = 'VIOLÊNCIA CONTRA POPULAÇÃO LGBT' THEN 'VIOLÊNCIA CONTRA POPULAÇÃO LGBT'
    WHEN `Grupovulneravel` = 'VIOLÊNCIA DOMÉSTICA E FAMILIAR CONTRA A MULHER' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência Contra Mulheres em Situação de Rua' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência Contra Mulheres em restrição de liberdade' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres Brancas Heterossexuais' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres Idosas' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres Imigrantes, Emigrantes e Refugiadas' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres Lésbicas, Bissexuais e Transexuais' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres Negras - Discriminação racial ou étnico-racial' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres com deficiência' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres de Comunidades: das Águas, Árabes, do Campo, Ciganas, da Floresta, Indígenas, Judaicas, Quilombolas, Rurais, entre outras' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres de Comunidades:Indígenas' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres de Comunidades:Outras' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres de Comunidades:Quilombolas' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres de Comunidades:Rurais' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres de Comunidades:das Águas' THEN 'VIOLÊNCIA CONTRA A MULHER'
    WHEN `Grupovulneravel` = 'Violência contra Mulheres de Comunidades:do Campo' THEN 'VIOLÊNCIA CONTRA A MULHER'

  ELSE
  `Grupovulneravel`
END
  AS `Grupovulneravel`,
  violacao,
FROM
  tcc-project-thais.transformed_files._44_NOVA_TABELA_Pais_do_suspeito