CREATE OR REPLACE TABLE
  transformed_files._43_NOVA_TABELA_Pais_da_Vitima AS
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
  CASE
    WHEN `Pais_da_Vitima` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Pais_da_Vitima` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Pais_da_Vitima` = 'BR | BRASIL' THEN 'BRASIL'
    WHEN `Pais_da_Vitima` = 'ES | ESPANHA' THEN 'ESPANHA'
    WHEN `Pais_da_Vitima` = 'IT | ITÁLIA' THEN 'ITÁLIA'
    WHEN `Pais_da_Vitima` = 'EC | EQUADOR' THEN 'EQUADOR'
    WHEN `Pais_da_Vitima` = 'JP | JAPÃO' THEN 'JAPÃO'
    WHEN `Pais_da_Vitima` = 'MM | MIANMAR (BIRMÂNIA)' THEN 'MIANMAR (BIRMÂNIA)'
    WHEN `Pais_da_Vitima` = 'BE | BÉLGICA' THEN 'BÉLGICA'
    WHEN `Pais_da_Vitima` = 'GR | GRÉCIA' THEN 'GRÉCIA'
    WHEN `Pais_da_Vitima` = 'MT | MALTA' THEN 'MALTA'
    WHEN `Pais_da_Vitima` = 'CL | CHILE' THEN 'CHILE'
    WHEN `Pais_da_Vitima` = 'AF | AFEGANISTÃO' THEN 'AFEGANISTÃO'
    WHEN `Pais_da_Vitima` = 'IO | TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO' THEN 'TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO'
    WHEN `Pais_da_Vitima` = 'CA | CANADÁ' THEN 'CANADÁ'
    WHEN `Pais_da_Vitima` = 'KH | CAMBOJA' THEN 'CAMBOJA'
    WHEN `Pais_da_Vitima` = 'CU | CUBA' THEN 'CUBA'
    WHEN `Pais_da_Vitima` = 'LB | LÍBANO' THEN 'LÍBANO'
    WHEN `Pais_da_Vitima` = 'HT | HAITI' THEN 'HAITI'
    WHEN `Pais_da_Vitima` = 'RO | ROMÊNIA' THEN 'ROMÊNIA'
    WHEN `Pais_da_Vitima` = 'NO | NORUEGA' THEN 'NORUEGA'
    WHEN `Pais_da_Vitima` = 'GE | GEÓRGIA' THEN 'GEÓRGIA'
    WHEN `Pais_da_Vitima` = 'PT | PORTUGAL' THEN 'PORTUGAL'
    WHEN `Pais_da_Vitima` = 'FR | FRANÇA' THEN 'FRANÇA'
    WHEN `Pais_da_Vitima` = 'RS | SÉRVIA' THEN 'SÉRVIA'
    WHEN `Pais_da_Vitima` = 'GB | REINO UNIDO' THEN 'REINO UNIDO'
    WHEN `Pais_da_Vitima` = 'AE | EMIRADOS ÁRABES UNIDOS' THEN 'EMIRADOS ÁRABES UNIDOS'
    WHEN `Pais_da_Vitima` = 'CV | CABO VERDE' THEN 'CABO VERDE'
    WHEN `Pais_da_Vitima` = 'ZA | ÁFRICA DO SUL' THEN 'ÁFRICA DO SUL'   
    WHEN `Pais_da_Vitima` = 'LY | LÍBIA' THEN 'LÍBIA'
    WHEN `Pais_da_Vitima` = 'CN | CHINA' THEN 'CHINA'
    WHEN `Pais_da_Vitima` = 'BR | BRASIL' THEN 'BRASIL'
    WHEN `Pais_da_Vitima` = 'HU | HUNGRIA' THEN 'HUNGRIA'
    WHEN `Pais_da_Vitima` = 'VE | VENEZUELA' THEN 'VENEZUELA'  
    WHEN `Pais_da_Vitima` = 'IL | ISRAEL' THEN 'ISRAEL'
    WHEN `Pais_da_Vitima` = 'NL | PAÍSES BAIXOS' THEN 'PAÍSES BAIXOS'
    WHEN `Pais_da_Vitima` = 'NG | NIGÉRIA' THEN 'NIGÉRIA'
    WHEN `Pais_da_Vitima` = 'MV | MALDIVAS' THEN 'MALDIVAS'
    WHEN `Pais_da_Vitima` = 'BO | BOLÍVIA' THEN 'BOLÍVIA'     
    WHEN `Pais_da_Vitima` = 'DE | ALEMANHA' THEN 'ALEMANHA'
    WHEN `Pais_da_Vitima` = 'PY | PARAGUAI' THEN 'PARAGUAI'
    WHEN `Pais_da_Vitima` = 'US | ESTADOS UNIDOS' THEN 'ESTADOS UNIDOS'
    WHEN `Pais_da_Vitima` = 'AR | ARGENTINA' THEN 'ARGENTINA'
    WHEN `Pais_da_Vitima` = 'MY | MALÁSIA' THEN 'MALÁSIA'      
    WHEN `Pais_da_Vitima` = 'UA | UCRÂNIA' THEN 'UCRÂNIA'
    WHEN `Pais_da_Vitima` = 'CH | SUÍÇA' THEN 'SUÍÇA'
    WHEN `Pais_da_Vitima` = 'TR | TURQUIA' THEN 'TURQUIA'
    WHEN `Pais_da_Vitima` = 'MX | MÉXICO' THEN 'MÉXICO' 
    WHEN `Pais_da_Vitima` = 'ÁFRICA DO SUL' THEN 'ÁFRICA DO SUL' 
    WHEN `Pais_da_Vitima` = 'VENEZUELANO(A)' THEN 'VENEZUELA' 
    WHEN `Pais_da_Vitima` = 'TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO' THEN 'TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO' 
    WHEN `Pais` LIKE 'TERRITÓRIO%BRITÂNICO%DO%OCEANO%ÍNDICO' THEN 'TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO'
    WHEN `Pais` LIKE 'REINO%UNIDO' THEN 'REINO UNIDO'
    WHEN `Pais` LIKE 'ÁFRICA%DO%SUL' THEN 'ÁFRICA DO SUL'  
    WHEN `Pais` LIKE 'ESTADOS%UNIDOS' THEN 'ESTADOS UNIDOS'
    WHEN `Pais` LIKE 'REPÚBLICA%DOMINICANA' THEN 'REPÚBLICA DOMINICANA' 
    WHEN `Pais_da_Vitima` = 'REINO UNIDO' THEN 'REINO UNIDO' 
    WHEN `Pais_da_Vitima` = 'PORTUGUÊS(A)' THEN 'PORTUGAL' 
    WHEN `Pais_da_Vitima` = 'PE | PERU' THEN 'PERU' 
    WHEN `Pais_da_Vitima` = 'PARAGUAIO(A)' THEN 'PARAGUAI' 
    WHEN `Pais_da_Vitima` = 'PA | PANAMÁ' THEN 'PANAMÁ' 
    WHEN `Pais_da_Vitima` = 'NZ | NOVA ZELÂNDIA' THEN 'NOVA ZELÂNDIA' 
    WHEN `Pais_da_Vitima` = 'LU | LUXEMBURGO' THEN 'LUXEMBURGO' 
    WHEN `Pais_da_Vitima` = 'ITALIANO(A)' THEN 'ITÁLIA' 
    WHEN `Pais_da_Vitima` = 'IE | IRLANDA' THEN 'IRLANDA' 
    WHEN `Pais_da_Vitima` = 'GF | GUIANA FRANCESA' THEN 'GUIANA FRANCESA' 
    WHEN `Pais_da_Vitima` = 'HAITIANO(A)' THEN 'HAITI' 
    WHEN `Pais_da_Vitima` = 'ESTADOS UNIDOS' THEN 'ESTADOS UNIDOS' 
    WHEN `Pais_da_Vitima` = 'CO | COLÔMBIA' THEN 'COLÔMBIA' 
    WHEN `Pais_da_Vitima` = 'CHILENO(A)' THEN 'CHILE' 
    WHEN `Pais_da_Vitima` = 'BÓSNIO(A)' THEN 'BÓSNIA' 

    WHEN `Pais_da_Vitima` = 'BRASILEIRO(A)' THEN 'BRASIL' 
    WHEN `Pais_da_Vitima` = 'BOTSUANO(A)' THEN 'BOTSUANA' 
    WHEN `Pais_da_Vitima` = 'BÓSNIO(A)' THEN 'BÓSNIA' 
    WHEN `Pais_da_Vitima` = 'BELIZENHO(A)' THEN 'BELIZE' 
    WHEN `Pais_da_Vitima` = 'ARGENTINO(A)' THEN 'ARGENTINA' 
    WHEN `Pais_da_Vitima` = 'BÓSNIO(A)' THEN 'BÓSNIA' 

  ELSE
  `Pais_da_Vitima`
END
  AS `Pais_da_Vitima`,
  Pais_do_suspeito,  
  violacao,
  Grupovulneravel,
FROM
  tcc-project-thais.transformed_files._42_NOVA_TABELA_sl_suspeito_ramo