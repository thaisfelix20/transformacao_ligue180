CREATE OR REPLACE TABLE
  transformed_files._07_NOVA_TABELA_Cenariodaviolacao AS
SELECT
  Datadecadastro,
  Canaldeatendimento,
  CASE
    WHEN `Cenariodaviolacao` = 'Ambiente virtual' THEN 'AMBIENTE VIRTUAL'
    WHEN `Cenariodaviolacao` = 'AMBIENTE VIRTUAL (NO ÂMBITO DA INTERNET)' THEN 'AMBIENTE VIRTUAL'
    WHEN `Cenariodaviolacao` = 'AMBIENTE VIRTUAL (INTERNET/REDE SOCIAL/APLICATIVOS)' THEN 'AMBIENTE VIRTUAL'
    WHEN `Cenariodaviolacao` = 'Ambiente Virtual (Internet/Rede Social/Aplicativos)' THEN 'AMBIENTE VIRTUAL'
    WHEN `Cenariodaviolacao` = 'Bar, lanchonete ou casa noturna' THEN 'BAR, LANCHONETE, RESTAURANTE OU CASA NOTURNA'
    WHEN `Cenariodaviolacao` = 'BAR, RESTAURANTE, LANCHONETE' THEN 'BAR, LANCHONETE, RESTAURANTE OU CASA NOTURNA'
    WHEN `Cenariodaviolacao` = 'BAR, LANCHONETE, RESTAURANTE' THEN 'BAR, LANCHONETE, RESTAURANTE OU CASA NOTURNA'
    WHEN `Cenariodaviolacao` = 'CASA NOTURNA' THEN 'BAR, LANCHONETE, RESTAURANTE OU CASA NOTURNA'
    WHEN `Cenariodaviolacao` = 'Shopping, cinema, clube ou outro ambiente de lazer' THEN 'SHOPPING, CINEMA, CLUBE OU OUTRO AMBIENTE DE LAZER'
    WHEN `Cenariodaviolacao` = 'AMBIENTE DE LAZER/ESPORTE/ENTRETENIMENTO' THEN 'SHOPPING, CINEMA, CLUBE OU OUTRO AMBIENTE DE LAZER'
    WHEN `Cenariodaviolacao` = 'AMBIENTE DE LAZER' THEN 'SHOPPING, CINEMA, CLUBE OU OUTRO AMBIENTE DE LAZER'
    WHEN `Cenariodaviolacao` = 'CLUBE ESPORTIVO' THEN 'SHOPPING, CINEMA, CLUBE OU OUTRO AMBIENTE DE LAZER'
    WHEN `Cenariodaviolacao` = 'SHOPPING' THEN 'SHOPPING, CINEMA, CLUBE OU OUTRO AMBIENTE DE LAZER'
    WHEN `Cenariodaviolacao` = 'CINEMA' THEN 'SHOPPING, CINEMA, CLUBE OU OUTRO AMBIENTE DE LAZER'

    WHEN `Cenariodaviolacao` = 'ESTABELECIMENTO DE ENSINO' THEN 'INSTITUIÇÃO DE ENSINO'
    WHEN `Cenariodaviolacao` = ' Estabelecimento de ensino' THEN 'INSTITUIÇÃO DE ENSINO'
    WHEN `Cenariodaviolacao` = 'Escola' THEN 'INSTITUIÇÃO DE ENSINO'

    WHEN `Cenariodaviolacao` = 'Casa da vítima/agressor' THEN 'CASA DA VÍTIMA/AGRESSOR'
    WHEN `Cenariodaviolacao` = 'CASA ONDE RESIDE A VÍTIMA E O SUSPEITO' THEN 'CASA DA VÍTIMA E DO AGRESSOR'
    WHEN `Cenariodaviolacao` = 'Casa da vítima' THEN 'CASA DA VÍTIMA'
    WHEN `Cenariodaviolacao` = 'CASA VÍTIMA' THEN 'CASA DA VÍTIMA'
    WHEN `Cenariodaviolacao` = 'Casa do suspeito' THEN 'CASA DO AGRESSOR'
    WHEN `Cenariodaviolacao` = 'CASA DO SUSPEITO' THEN 'CASA DO AGRESSOR'

    WHEN `Cenariodaviolacao` = 'Casa de amigos ou familiares' THEN 'CASA DE FAMILIARES/AMIGOS'
    WHEN `Cenariodaviolacao` = 'CASA DE FAMILIAR' THEN 'CASA DE FAMILIARES/AMIGOS'
    WHEN `Cenariodaviolacao` = 'CASA DE FAMILIARES' THEN 'CASA DE FAMILIARES/AMIGOS'

    WHEN `Cenariodaviolacao` = 'Centro de Referência' THEN 'CENTRO DE REFERÊNCIA'
    WHEN `Cenariodaviolacao` = 'Defensoria pública' THEN 'DEFENSORIA PÚBLICA'

    WHEN `Cenariodaviolacao` = 'DELEGACIA DE POLÍCIA COMO UNIDADE PRISIONAL' THEN 'DELEGACIA DE POLÍCIA'
    WHEN `Cenariodaviolacao` = 'Delegacia' THEN 'DELEGACIA DE POLÍCIA'
    WHEN `Cenariodaviolacao` = 'Estabelecimento de saúde' THEN 'ESTABELECIMENTO DE SAÚDE'
    WHEN `Cenariodaviolacao` = 'Evento público' THEN 'EVENTO PÚBLICO'
    WHEN `Cenariodaviolacao` = 'ÓRGÃO PÚBLICO' THEN 'ÓRGÃOS PÚBLICOS'
    WHEN `Cenariodaviolacao` = 'INSTITUIÇÃO DE LONGA PERMANÊNCIA - IDOSOS' THEN 'INSTITUIÇÃO DE LONGA PERMANÊNCIA DE IDOSO - ILPI'
    WHEN `Cenariodaviolacao` = 'Juizado' THEN 'JUIZADO'
    WHEN `Cenariodaviolacao` = 'Local de trabalho da vítma' THEN 'LOCAL DE TRABALHO DA VÍTIMA'
    WHEN `Cenariodaviolacao` = 'Metrô ou trem' THEN 'METRÔ/TREM'
    WHEN `Cenariodaviolacao` = 'METRÔ OU TREM' THEN 'METRÔ/TREM'
    WHEN `Cenariodaviolacao` = 'Outros' THEN 'OUTROS'

    WHEN `Cenariodaviolacao` = 'Serviço de abrigamento' THEN 'SERVIÇO DE ABRIGAMENTO'
    WHEN `Cenariodaviolacao` = 'TAXI' THEN 'TAXI/TRANSPORTE APLICATIVO'
    WHEN `Cenariodaviolacao` = 'Taxi' THEN 'TAXI/TRANSPORTE APLICATIVO'
    WHEN `Cenariodaviolacao` = 'Transporte monitorado por aplicativo' THEN 'TRANSPORTE MONITORADO POR APLICATIVO'
    WHEN `Cenariodaviolacao` = 'Unidade Prisional - Presídio' THEN 'UNIDADE PRISIONAL'
    WHEN `Cenariodaviolacao` = 'Unidade prisional' THEN 'UNIDADE PRISIONAL'
    WHEN `Cenariodaviolacao` = 'Via pública' THEN 'VIA PÚBLICA'
    WHEN `Cenariodaviolacao` = 'Ônibus' THEN 'ÔNIBUS'
    WHEN `Cenariodaviolacao` = 'N/D' THEN 'NÃO SABE INFORMAR'
    WHEN `Cenariodaviolacao` is null THEN 'NÃO INFORMADO'
    ELSE `Cenariodaviolacao`
  END AS `Cenariodaviolacao`,
  Denunciaemergencial,
  Denunciante,
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
  tcc-project-thais.transformed_files._06_NOVA_TABELA_Canaldeatendimento