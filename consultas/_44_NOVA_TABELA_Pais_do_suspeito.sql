CREATE OR REPLACE TABLE
  transformed_files._44_NOVA_TABELA_Pais_do_suspeito AS
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
  CASE
    WHEN `Pais_do_suspeito` IS NULL THEN 'NÃO INFORMADO'
    WHEN `Pais_do_suspeito` = 'N/D' THEN 'NÃO INFORMADO'
    WHEN `Pais_do_suspeito` = 'BR | BRASIL' THEN 'BRASIL'
    WHEN `Pais_do_suspeito` = 'ES | ESPANHA' THEN 'ESPANHA'
    WHEN `Pais_do_suspeito` = 'IT | ITÁLIA' THEN 'ITÁLIA'
    WHEN `Pais_do_suspeito` = 'EC | EQUADOR' THEN 'EQUADOR'
    WHEN `Pais_do_suspeito` = 'JP | JAPÃO' THEN 'JAPÃO'
    WHEN `Pais_do_suspeito` = 'MM | MIANMAR (BIRMÂNIA)' THEN 'MIANMAR (BIRMÂNIA)'
    WHEN `Pais_do_suspeito` = 'BE | BÉLGICA' THEN 'BÉLGICA'
    WHEN `Pais_do_suspeito` = 'GR | GRÉCIA' THEN 'GRÉCIA'
    WHEN `Pais_do_suspeito` = 'MT | MALTA' THEN 'MALTA'
    WHEN `Pais_do_suspeito` = 'CL | CHILE' THEN 'CHILE'
    WHEN `Pais_do_suspeito` = 'AF | AFEGANISTÃO' THEN 'AFEGANISTÃO'
    WHEN `Pais_do_suspeito` = 'IO | TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO' THEN 'TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO'
    WHEN `Pais_do_suspeito` = 'CA | CANADÁ' THEN 'CANADÁ'
    WHEN `Pais_do_suspeito` = 'KH | CAMBOJA' THEN 'CAMBOJA'
    WHEN `Pais_do_suspeito` = 'CU | CUBA' THEN 'CUBA'
    WHEN `Pais_do_suspeito` = 'LB | LÍBANO' THEN 'LÍBANO'
    WHEN `Pais_do_suspeito` = 'HT | HAITI' THEN 'HAITI'
    WHEN `Pais_do_suspeito` = 'RO | ROMÊNIA' THEN 'ROMÊNIA'
    WHEN `Pais_do_suspeito` = 'NO | NORUEGA' THEN 'NORUEGA'
    WHEN `Pais_do_suspeito` = 'GE | GEÓRGIA' THEN 'GEÓRGIA'
    WHEN `Pais_do_suspeito` = 'PT | PORTUGAL' THEN 'PORTUGAL'
    WHEN `Pais_do_suspeito` = 'FR | FRANÇA' THEN 'FRANÇA'
    WHEN `Pais_do_suspeito` = 'RS | SÉRVIA' THEN 'SÉRVIA'
    WHEN `Pais_do_suspeito` = 'GB | REINO UNIDO' THEN 'REINO UNIDO'
    WHEN `Pais_do_suspeito` = 'AE | EMIRADOS ÁRABES UNIDOS' THEN 'EMIRADOS ÁRABES UNIDOS'
    WHEN `Pais_do_suspeito` = 'CV | CABO VERDE' THEN 'CABO VERDE'
    WHEN `Pais_do_suspeito` = 'ZA | ÁFRICA DO SUL' THEN 'ÁFRICA DO SUL'   
    WHEN `Pais_do_suspeito` = 'LY | LÍBIA' THEN 'LÍBIA'
    WHEN `Pais_do_suspeito` = 'CN | CHINA' THEN 'CHINA'
    WHEN `Pais_do_suspeito` = 'BR | BRASIL' THEN 'BRASIL'
    WHEN `Pais_do_suspeito` = 'HU | HUNGRIA' THEN 'HUNGRIA'
    WHEN `Pais_do_suspeito` = 'VE | VENEZUELA' THEN 'VENEZUELA'  
    WHEN `Pais_do_suspeito` = 'IL | ISRAEL' THEN 'ISRAEL'
    WHEN `Pais_do_suspeito` = 'NL | PAÍSES BAIXOS' THEN 'PAÍSES BAIXOS'
    WHEN `Pais_do_suspeito` = 'NG | NIGÉRIA' THEN 'NIGÉRIA'
    WHEN `Pais_do_suspeito` = 'MV | MALDIVAS' THEN 'MALDIVAS'
    WHEN `Pais_do_suspeito` = 'BO | BOLÍVIA' THEN 'BOLÍVIA'     
    WHEN `Pais_do_suspeito` = 'DE | ALEMANHA' THEN 'ALEMANHA'
    WHEN `Pais_do_suspeito` = 'PY | PARAGUAI' THEN 'PARAGUAI'
    WHEN `Pais_do_suspeito` = 'US | ESTADOS UNIDOS' THEN 'ESTADOS UNIDOS'
    WHEN `Pais_do_suspeito` = 'AR | ARGENTINA' THEN 'ARGENTINA'
    WHEN `Pais_do_suspeito` = 'MY | MALÁSIA' THEN 'MALÁSIA'      
    WHEN `Pais_do_suspeito` = 'UA | UCRÂNIA' THEN 'UCRÂNIA'
    WHEN `Pais_do_suspeito` = 'CH | SUÍÇA' THEN 'SUÍÇA'
    WHEN `Pais_do_suspeito` = 'TR | TURQUIA' THEN 'TURQUIA'
    WHEN `Pais_do_suspeito` = 'MX | MÉXICO' THEN 'MÉXICO' 
    WHEN `Pais_do_suspeito` = 'ÁFRICA DO SUL' THEN 'ÁFRICA DO SUL' 
    WHEN `Pais_do_suspeito` = 'VENEZUELANO(A)' THEN 'VENEZUELA' 
    WHEN `Pais_do_suspeito` = 'TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO' THEN 'TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO' 
    WHEN `Pais` LIKE 'TERRITÓRIO%BRITÂNICO%DO%OCEANO%ÍNDICO' THEN 'TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO'
    WHEN `Pais_do_suspeito` LIKE 'REINO%UNIDO' THEN 'REINO UNIDO'
    WHEN `Pais_do_suspeito` LIKE 'ÁFRICA%DO%SUL' THEN 'ÁFRICA DO SUL'  
    WHEN `Pais_do_suspeito` LIKE 'ESTADOS%UNIDOS' THEN 'ESTADOS UNIDOS'
    WHEN `Pais_do_suspeito` LIKE 'REPÚBLICA%DOMINICANA' THEN 'REPÚBLICA DOMINICANA' 
    WHEN `Pais_do_suspeito` = 'REINO UNIDO' THEN 'REINO UNIDO' 
    WHEN `Pais_do_suspeito` = 'PORTUGUÊS(A)' THEN 'PORTUGAL' 
    WHEN `Pais_do_suspeito` = 'PE | PERU' THEN 'PERU' 
    WHEN `Pais_do_suspeito` = 'PARAGUAIO(A)' THEN 'PARAGUAI' 
    WHEN `Pais_do_suspeito` = 'PA | PANAMÁ' THEN 'PANAMÁ' 
    WHEN `Pais_do_suspeito` = 'NZ | NOVA ZELÂNDIA' THEN 'NOVA ZELÂNDIA' 
    WHEN `Pais_do_suspeito` = 'LU | LUXEMBURGO' THEN 'LUXEMBURGO' 
    WHEN `Pais_do_suspeito` = 'ITALIANO(A)' THEN 'ITÁLIA' 
    WHEN `Pais_do_suspeito` = 'IE | IRLANDA' THEN 'IRLANDA' 
    WHEN `Pais_do_suspeito` = 'GF | GUIANA FRANCESA' THEN 'GUIANA FRANCESA' 
    WHEN `Pais_do_suspeito` = 'HAITIANO(A)' THEN 'HAITI' 
    WHEN `Pais_do_suspeito` = 'ESTADOS UNIDOS' THEN 'ESTADOS UNIDOS' 
    WHEN `Pais_do_suspeito` = 'CO | COLÔMBIA' THEN 'COLÔMBIA' 
    WHEN `Pais_do_suspeito` = 'CHILENO(A)' THEN 'CHILE' 
    WHEN `Pais_do_suspeito` = 'BÓSNIO(A)' THEN 'BÓSNIA' 

    WHEN `Pais_do_suspeito` = 'BRASILEIRO(A)' THEN 'BRASIL' 
    WHEN `Pais_do_suspeito` = 'BOTSUANO(A)' THEN 'BOTSUANA' 
    WHEN `Pais_do_suspeito` = 'BÓSNIO(A)' THEN 'BÓSNIA' 
    WHEN `Pais_do_suspeito` = 'BELIZENHO(A)' THEN 'BELIZE' 
    WHEN `Pais_do_suspeito` = 'ARGENTINO(A)' THEN 'ARGENTINA' 
    WHEN `Pais_do_suspeito` = 'BÓSNIO(A)' THEN 'BÓSNIA' 
    WHEN `Pais_do_suspeito` = 'UG | UGANDA' THEN 'UGANDA' 
    WHEN `Pais_do_suspeito` = 'UY | URUGUAI' THEN 'URUGUAI' 
    WHEN `Pais_do_suspeito` = 'SY | SÍRIA' THEN 'SÍRIA' 
    WHEN `Pais_do_suspeito` = 'SG | SINGAPURA' THEN 'SINGAPURA' 
    WHEN `Pais_do_suspeito` = 'SE | SUÉCIA' THEN 'SUÉCIA' 
    WHEN `Pais_do_suspeito` = 'AO | ANGOLA' THEN 'ANGOLA' 

    WHEN `Pais_do_suspeito` = 'AT | ÁUSTRIA' THEN 'ÁUSTRIA' 
    WHEN `Pais_do_suspeito` = 'AU | AUSTRÁLIA' THEN 'AUSTRÁLIA' 
    WHEN `Pais_do_suspeito` = 'AZ | AZERBAIJÃO' THEN 'AZERBAIJÃO' 
    WHEN `Pais_do_suspeito` = 'BANGLADECHE' THEN 'BANGLADESH' 
    WHEN `Pais_do_suspeito` = 'BANGLADEXE' THEN 'BANGLADESH' 
    WHEN `Pais_do_suspeito` = 'BD | BANGLADESH' THEN 'BANGLADESH' 
    WHEN `Pais_do_suspeito` LIKE 'COSTA%RICA' THEN 'COSTA RICA' 
    WHEN `Pais_do_suspeito` = 'EG | EGITO' THEN 'EGITO' 
    WHEN `Pais_do_suspeito` = 'EGIPTO' THEN 'EGITO' 
    WHEN `Pais_do_suspeito` = 'FI | FINLÂNDIA' THEN 'FINLÂNDIA' 
    WHEN `Pais_do_suspeito` = 'FK | ILHAS MALVINAS' THEN 'ILHAS MALVINAS' 
    WHEN `Pais_do_suspeito` = 'ID | INDONÉSIA' THEN 'INDONÉSIA' 
    WHEN `Pais_do_suspeito` = 'IN | ÍNDIA' THEN 'ÍNDIA' 
    WHEN `Pais_do_suspeito` = 'IQ | IRAQUE' THEN 'IRAQUE' 
    WHEN `Pais_do_suspeito` = 'KR | COREIA DO SUL' THEN 'COREIA DO SUL' 
    WHEN `Pais_do_suspeito` = 'MIANMAR' THEN 'MIANMAR (BIRMÂNIA)' 
    WHEN `Pais_do_suspeito` = 'PK | PAQUISTÃO' THEN 'PAQUISTÃO' 

    WHEN `Pais_do_suspeito` = 'POLÓNIA' THEN 'POLÔNIA' 
    WHEN `Pais_do_suspeito` = 'PORTUGUAL' THEN 'PORTUGAL' 
    WHEN `Pais_do_suspeito` = 'PR | PORTO RICO' THEN 'PORTO RICO' 
    WHEN `Pais_do_suspeito` = 'QA | CATAR' THEN 'CATAR' 
    WHEN `Pais_do_suspeito` = 'PK | PAQUISTÃO' THEN 'PAQUISTÃO' 

  ELSE
  `Pais_do_suspeito`
END
  AS `Pais_do_suspeito`,  
  violacao,
  Grupovulneravel,
FROM
  tcc-project-thais.transformed_files._43_NOVA_TABELA_Pais_da_Vitima