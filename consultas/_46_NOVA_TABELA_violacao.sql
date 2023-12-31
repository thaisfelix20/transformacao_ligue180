CREATE TABLE
  transformed_files._46_NOVA_TABELA_violacao AS
WITH
  so_violacao AS (
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
    Grupovulneravel,
    violacao
  FROM
    tcc-project-thais.transformed_files._45_NOVA_TABELA_Grupovulneravel ),
  maiusculo AS (
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
    Grupovulneravel,
    UPPER(`violacao`) AS violacao
  FROM
    so_violacao ),
  correcao_acentos AS (
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
    Grupovulneravel,
    REGEXP_REPLACE(REGEXP_REPLACE(REGEXP_REPLACE(REGEXP_REPLACE(REGEXP_REPLACE(REGEXP_REPLACE(`violacao`,r"[ÁÀÂÃÄ]", "A"),r"[ÉÈÊË]", "E"),r"[ÍÌÎÏ]", "I"),r"[ÓÒÔÕÖ]", "O"),r"[ÚÙÛ]", "U"),r"[Ç]", "C") AS violacao
  FROM
    maiusculo ),
  violacoes_corrigidas AS (
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
    Grupovulneravel,
    CASE
      WHEN `violacao` IS NULL THEN 'NAO INFORMADO'
    ELSE
    `violacao`
  END
    AS `violacao`,
  FROM
    correcao_acentos ),
  regex_tabela AS (
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
    Grupovulneravel,
    REGEXP_REPLACE(violacao, r'[^a-zA-Z0-9> .]+', '>') AS violacao
  FROM
    violacoes_corrigidas ),

  final AS (
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
    Grupovulneravel,
    violacao
  FROM
    regex_tabela)
SELECT
  *
FROM
  final