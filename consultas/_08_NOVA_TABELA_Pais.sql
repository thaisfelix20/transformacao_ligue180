CREATE OR REPLACE TABLE
  transformed_files._08_NOVA_TABELA_Pais AS
SELECT
  Datadecadastro,
  Canaldeatendimento,
  Cenariodaviolacao,
  Denunciaemergencial,
  Denunciante,
  CASE
    WHEN `Pais` is null THEN 'NÃO INFORMADO' 
    WHEN `Pais` = 'BR | BRASIL' THEN 'BRASIL'
    WHEN `Pais` = 'ES | ESPANHA' THEN 'ESPANHA'
    WHEN `Pais` = 'IT | ITÁLIA' THEN 'ITÁLIA'
    WHEN `Pais` = 'EC | EQUADOR' THEN 'EQUADOR'
    WHEN `Pais` = 'JP | JAPÃO' THEN 'JAPÃO'
    WHEN `Pais` = 'MM | MIANMAR (BIRMÂNIA)' THEN 'MIANMAR (BIRMÂNIA)'
    WHEN `Pais` = 'BE | BÉLGICA' THEN 'BÉLGICA'
    WHEN `Pais` = 'GR | GRÉCIA' THEN 'GRÉCIA'
    WHEN `Pais` = 'MT | MALTA' THEN 'MALTA'
    WHEN `Pais` = 'CL | CHILE' THEN 'CHILE'
    WHEN `Pais` = 'AF | AFEGANISTÃO' THEN 'AFEGANISTÃO'
    WHEN `Pais` = 'IO | TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO' THEN 'TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO'
    WHEN `Pais` LIKE 'TERRITÓRIO%BRITÂNICO%DO%OCEANO%ÍNDICO' THEN 'TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO'
    WHEN `Pais` = 'CA | CANADÁ' THEN 'CANADÁ'
    WHEN `Pais` = 'KH | CAMBOJA' THEN 'CAMBOJA'
    WHEN `Pais` = 'CU | CUBA' THEN 'CUBA'
    WHEN `Pais` = 'LB | LÍBANO' THEN 'LÍBANO'
    WHEN `Pais` = 'HT | HAITI' THEN 'HAITI'
    WHEN `Pais` = 'RO | ROMÊNIA' THEN 'ROMÊNIA'
    WHEN `Pais` = 'NO | NORUEGA' THEN 'NORUEGA'
    WHEN `Pais` = 'GE | GEÓRGIA' THEN 'GEÓRGIA'
    WHEN `Pais` = 'PT | PORTUGAL' THEN 'PORTUGAL'
    WHEN `Pais` = 'FR | FRANÇA' THEN 'FRANÇA'
    WHEN `Pais` = 'RS | SÉRVIA' THEN 'SÉRVIA'
    WHEN `Pais` = 'GB | REINO UNIDO' THEN 'REINO UNIDO'
    WHEN `Pais` LIKE 'REINO%UNIDO' THEN 'REINO UNIDO'
    WHEN `Pais` = 'AE | EMIRADOS ÁRABES UNIDOS' THEN 'EMIRADOS ÁRABES UNIDOS'
    WHEN `Pais` = 'CV | CABO VERDE' THEN 'CABO VERDE'
    WHEN `Pais` = 'ZA | ÁFRICA DO SUL' THEN 'ÁFRICA DO SUL'   
    WHEN `Pais` LIKE 'ÁFRICA%DO%SUL' THEN 'ÁFRICA DO SUL'  
    WHEN `Pais` = 'LY | LÍBIA' THEN 'LÍBIA'
    WHEN `Pais` = 'CN | CHINA' THEN 'CHINA'
    WHEN `Pais` = 'BR | BRASIL' THEN 'BRASIL'
    WHEN `Pais` = 'HU | HUNGRIA' THEN 'HUNGRIA'
    WHEN `Pais` = 'VE | VENEZUELA' THEN 'VENEZUELA'  
    WHEN `Pais` = 'IL | ISRAEL' THEN 'ISRAEL'
    WHEN `Pais` = 'NL | PAÍSES BAIXOS' THEN 'PAÍSES BAIXOS'
    WHEN `Pais` = 'NG | NIGÉRIA' THEN 'NIGÉRIA'
    WHEN `Pais` = 'MV | MALDIVAS' THEN 'MALDIVAS'
    WHEN `Pais` = 'BO | BOLÍVIA' THEN 'BOLÍVIA'     
    WHEN `Pais` = 'DE | ALEMANHA' THEN 'ALEMANHA'
    WHEN `Pais` = 'PY | PARAGUAI' THEN 'PARAGUAI'
    WHEN `Pais` = 'US | ESTADOS UNIDOS' THEN 'ESTADOS UNIDOS'
    WHEN `Pais` LIKE 'ESTADOS%UNIDOS' THEN 'ESTADOS UNIDOS'
    WHEN `Pais` = 'AR | ARGENTINA' THEN 'ARGENTINA'
    WHEN `Pais` = 'MY | MALÁSIA' THEN 'MALÁSIA'      
    WHEN `Pais` = 'UA | UCRÂNIA' THEN 'UCRÂNIA'
    WHEN `Pais` = 'CH | SUÍÇA' THEN 'SUÍÇA'
    WHEN `Pais` = 'TR | TURQUIA' THEN 'TURQUIA'
    WHEN `Pais` = 'MX | MÉXICO' THEN 'MÉXICO' 
    WHEN `Pais` LIKE 'REPÚBLICA%DOMINICANA' THEN 'REPÚBLICA DOMINICANA' 
   ELSE
  `Pais`
END
  AS `Pais`,
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
  tcc-project-thais.transformed_files._07_NOVA_TABELA_Cenariodaviolacao