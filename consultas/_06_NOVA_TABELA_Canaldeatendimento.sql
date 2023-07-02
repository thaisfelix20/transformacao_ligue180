CREATE OR REPLACE TABLE
  transformed_files._06_NOVA_TABELA_Canaldeatendimento AS
SELECT
  Datadecadastro,
  CASE
    WHEN `Canaldeatendimento` = 'Proteja Brasil - Aplicativo' THEN 'APLICATIVO'
    WHEN `Canaldeatendimento` = 'APLICATIVO/APP' THEN 'APLICATIVO'
    WHEN `Canaldeatendimento` = 'DENÚNCIA - ATENDIMENTO CARTA' THEN 'CARTA'
    WHEN `Canaldeatendimento` = 'Carta' THEN 'CARTA'
    WHEN `Canaldeatendimento` = 'E-mail: ligue180@mdh.gov.br ' THEN 'E-MAIL'
    WHEN `Canaldeatendimento` = 'DENÚNCIA - ATENDIMENTO E-MAIL' THEN 'E-MAIL'
    WHEN `Canaldeatendimento` = 'DENÚNCIA - ATENDIMENTO TELEFÔNICO' THEN 'TELEFÔNICO'
    WHEN `Canaldeatendimento` = 'Atendimento Telefônico' THEN 'TELEFÔNICO'
    WHEN `Canaldeatendimento` = 'DENÚNCIA - ATENDIMENTO PRESENCIAL' THEN 'PRESENCIAL'
    WHEN `Canaldeatendimento` = 'DENÚNCIA - ATENDIMENTO TELEGRAM' THEN 'TELEGRAM'
    WHEN `Canaldeatendimento` = 'DENÚNCIA - ATENDIMENTO WEBCHAT' THEN 'WEBCHAT'
    WHEN `Canaldeatendimento` = 'AUTUAÇÃO DE OFÍCIO' THEN 'OFÍCIO'
    WHEN `Canaldeatendimento` = 'DENÚNCIA - ATENDIMENTO OFÍCIO' THEN 'OFÍCIO'
    WHEN `Canaldeatendimento` = 'Ofício' THEN 'OFÍCIO'
    WHEN `Canaldeatendimento` = 'e-Ouv' THEN 'E-OUV'
    WHEN `Canaldeatendimento` = 'e-Ouv' THEN 'E-OUV'

    ELSE `Canaldeatendimento`
  END AS `Canaldeatendimento`,
  Denunciaemergencial,
  Denunciante,
  Cenariodaviolacao,
  Pais,
  UF,
  Frequencia,
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
  tcc-project-thais.transformed_files._05_NOVA_TABELA_datadecadastro