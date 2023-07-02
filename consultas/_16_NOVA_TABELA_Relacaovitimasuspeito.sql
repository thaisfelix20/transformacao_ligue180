CREATE OR REPLACE TABLE
  transformed_files._16_NOVA_TABELA_Relacaovitimasuspeito AS
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
  CASE
    WHEN `Relacaovitimasuspeito` is null THEN 'NÃO INFORMADO'
    WHEN `Relacaovitimasuspeito` = 'AGENTE PENITENCIÁRIO' THEN'AGENTE PENITENCIÁRIO'
    WHEN `Relacaovitimasuspeito` = 'ALUNO (A)' THEN'ALUNO(A)'
    WHEN `Relacaovitimasuspeito` = 'AMIGO (A)' THEN'AMIGO(A)'
    WHEN `Relacaovitimasuspeito` = 'AMIGO(A) DA FAMÍLIA' THEN'AMIGO(A)'
    WHEN `Relacaovitimasuspeito` = 'Amigo (a)' THEN'AMIGO(A)'
    WHEN `Relacaovitimasuspeito` = 'Avó' THEN'AVÔ(Ó)'
    WHEN `Relacaovitimasuspeito` = 'Avô' THEN'AVÔ(Ó)'
    WHEN `Relacaovitimasuspeito` = 'BISAVÔ(Ó)' THEN'BISAVÔ(Ó)'
    WHEN `Relacaovitimasuspeito` = 'Bisneto(a)' THEN'BISNETO(A)'
    WHEN `Relacaovitimasuspeito` = 'COLEGA DE TRABALHO (MESMO NÍVEL HIERÁRQUICO)' THEN'COLEGA DE TRABALHO (MESMO NÍVEL HIERÁRQUICO)'
    WHEN `Relacaovitimasuspeito` = 'COMPANHEIRO (A)' THEN'COMPANHEIRO(A)'
    WHEN `Relacaovitimasuspeito` = 'CUIDADOR (A)' THEN'CUIDADOR(A)'
    WHEN `Relacaovitimasuspeito` = 'CUNHADO (A)' THEN'CUNHADO(A)'
    WHEN `Relacaovitimasuspeito` = 'Chefe' THEN'CHEFE'
    WHEN `Relacaovitimasuspeito` = 'Companheiro (a)' THEN'COMPANHEIRO(A)'
    WHEN `Relacaovitimasuspeito` = 'Cuidador (a)' THEN'CUIDADOR(A)'
    WHEN `Relacaovitimasuspeito` = 'Cunhado (a)' THEN'CUNHADO(A)'
    WHEN `Relacaovitimasuspeito` = 'DIREITOR(A) DA UNIDADE PRISIONAL' THEN'DIREITOR(A) DA UNIDADE PRISIONAL'
    WHEN `Relacaovitimasuspeito` = 'DIRETOR(A)' THEN'DIRETOR(A)'
    WHEN `Relacaovitimasuspeito` = 'DIRETOR(A) DE UNIDADE PRISIONAL' THEN'DIREITOR(A) DA UNIDADE PRISIONAL'
    WHEN `Relacaovitimasuspeito` = 'DIRETOR/GESTOR DE INSTITUIÇÃO' THEN'DIRETOR/GESTOR DE INSTITUIÇÃO'
    WHEN `Relacaovitimasuspeito` = 'Desconhecido(a)' THEN'DESCONHECIDO(A)'
    WHEN `Relacaovitimasuspeito` = 'Diretor(a) de Unidade Prisional' THEN'DIREITOR(A) DA UNIDADE PRISIONAL'
    WHEN `Relacaovitimasuspeito` = 'Diretor(a) de escola' THEN'DIRETOR(A) DE ESCOLA'
    WHEN `Relacaovitimasuspeito` = 'EMPREGADO (HIERARQUICAMENTE INFERIOR)' THEN'EMPREGADO(HIERARQUICAMENTE INFERIOR)'
    WHEN `Relacaovitimasuspeito` = 'EMPREGADO(A) DOMÉSTICO' THEN'EMPREGADO(A) DOMÉSTICO'
    WHEN `Relacaovitimasuspeito` = 'EMPREGADO(HIERARQUICAMENTE INFERIOR)' THEN'EMPREGADO(HIERARQUICAMENTE INFERIOR)'
    WHEN `Relacaovitimasuspeito` = 'EMPREGADOR/ PATRÃO(HIERARQUICAMENTE SUPERIOR)' THEN'EMPREGADOR/PATRÃO (HIERARQUICAMENTE SUPERIOR)'
    WHEN `Relacaovitimasuspeito` = 'EMPREGADOR/PATRÃO (HIERARQUICAMENTE SUPERIOR)' THEN'EMPREGADOR/PATRÃO(HIERARQUICAMENTE SUPERIOR)'
    WHEN `Relacaovitimasuspeito` = 'ENTEADO(A)' THEN'ENTEADO(A)'
    WHEN `Relacaovitimasuspeito` = 'ESPOSA' THEN'ESPOSA(O)'
    WHEN `Relacaovitimasuspeito` = 'EX- NAMORADO(A)' THEN'EX-NAMORADO(A)'
    WHEN `Relacaovitimasuspeito` = 'EX-COMPANHEIRO (A)' THEN'EX-COMPANHEIRO(A)'
    WHEN `Relacaovitimasuspeito` = 'EX-ESPOSA' THEN'EX-ESPOSA(O)'
    WHEN `Relacaovitimasuspeito` = 'EX-NAMORADO (A)' THEN'EX-NAMORADO(A)'
    WHEN `Relacaovitimasuspeito` = 'Empregado (a)' THEN'EMPREGADOR/PATRÃO (HIERARQUICAMENTE SUPERIOR)'
    WHEN `Relacaovitimasuspeito` = 'Empregador' THEN'EMPREGADOR/PATRÃO (HIERARQUICAMENTE SUPERIOR)'
    WHEN `Relacaovitimasuspeito` = 'Enteado(a)' THEN'ENTEADO(A)'
    WHEN `Relacaovitimasuspeito` = 'Esposa' THEN'ESPOSA(O)'
    WHEN `Relacaovitimasuspeito` = 'Ex-Companheiro (a)' THEN'EX-COMPANHEIRO(A)'
    WHEN `Relacaovitimasuspeito` = 'Ex-Esposa' THEN'EX-ESPOSA(O)'
    WHEN `Relacaovitimasuspeito` = 'Ex-Marido' THEN'EX-MARIDO'
    WHEN `Relacaovitimasuspeito` = 'Ex-Namorada' THEN'EX-NAMORADO(A)'
    WHEN `Relacaovitimasuspeito` = 'Ex-Namorado' THEN'EX-NAMORADO(A)'
    WHEN `Relacaovitimasuspeito` = 'FAMILIARES' THEN'FAMILIARES'
    WHEN `Relacaovitimasuspeito` = 'FILHO (A)' THEN'FILHO(A)'
    WHEN `Relacaovitimasuspeito` = 'FUNCIONÁRIO(A)' THEN'FUNCIONÁRIO, VOLUNTÁRIO OU PRESTADOR DE SERVIÇO PARA INSTITUIÇÃO'
    WHEN `Relacaovitimasuspeito` = 'FUNCIONÁRIO, VOLUNTÁRIO OU PRESTADOR DE SERVIÇO PARA INSTITUIÇÃO' THEN'FUNCIONÁRIO, VOLUNTÁRIO OU PRESTADOR DE SERVIÇO PARA INSTITUIÇÃO'
    WHEN `Relacaovitimasuspeito` = 'Familiares' THEN'FAMILIARES'
    WHEN `Relacaovitimasuspeito` = 'Filho (a)' THEN'FILHO(A)'
    WHEN `Relacaovitimasuspeito` = 'Genro/Nora' THEN'GENRO/NORA'
    WHEN `Relacaovitimasuspeito` = 'HIERARQUICAMENTE INFERIOR' THEN'HIERARQUICAMENTE INFERIOR'
    WHEN `Relacaovitimasuspeito` = 'HIERARQUICAMENTE SUPERIOR' THEN'HIERARQUICAMENTE SUPERIOR'
    WHEN `Relacaovitimasuspeito` = 'IRMÃO (Ã)' THEN'IRMÃO(Ã)'
    WHEN `Relacaovitimasuspeito` = 'Irmão (ã)' THEN'IRMÃO(Ã)'
    WHEN `Relacaovitimasuspeito` = 'LÍDER RELIGIOSO' THEN'LÍDER RELIGIOSO(A)'
    WHEN `Relacaovitimasuspeito` = 'Líder Religioso' THEN'LÍDER RELIGIOSO(A)'
    WHEN `Relacaovitimasuspeito` = 'MARIDO' THEN'ESPOSA(O)'
    WHEN `Relacaovitimasuspeito` = 'MARIDO/ ESPOSA' THEN'ESPOSA(O)'
    WHEN `Relacaovitimasuspeito` = 'MESMO NÍVEL HIERÁRQUICO' THEN'MESMO NÍVEL HIERÁRQUICO'
    WHEN `Relacaovitimasuspeito` = 'MORA NA MESMA RESIDÊNCIA MAS NÃO É FAMILIAR' THEN'MORA NA MESMA RESIDÊNCIA MAS NÃO É FAMILIAR'
    WHEN `Relacaovitimasuspeito` = 'MOROU NA MESMA RESIDÊNCIA MAS NÃO É FAMILIAR' THEN'MOROU NA MESMA RESIDÊNCIA MAS NÃO É FAMILIAR'
    WHEN `Relacaovitimasuspeito` = 'Madrasta' THEN'PADRASTO/MADRASTA'
    WHEN `Relacaovitimasuspeito` = 'Marido' THEN'ESPOSA(O)'
    WHEN `Relacaovitimasuspeito` = 'MÃE' THEN'PAI/MÃE'
    WHEN `Relacaovitimasuspeito` = 'Mãe' THEN'PAI/MÃE'
    WHEN `Relacaovitimasuspeito` = 'N/D' THEN'NÃO INFORMADO'
    WHEN `Relacaovitimasuspeito` = 'Namorado(a)' THEN'NAMORADO(A)'
    WHEN `Relacaovitimasuspeito` = 'Neto(a)' THEN'NETO(A)'
    WHEN `Relacaovitimasuspeito` = 'NÃO SABE INFORMAR' THEN'NÃO SABE INFORMAR'
    WHEN `Relacaovitimasuspeito` = 'NÃO SE APLICA' THEN'NÃO INFORMADO'
    WHEN `Relacaovitimasuspeito` = 'Não informado' THEN'NÃO INFORMADO'
    WHEN `Relacaovitimasuspeito` = 'Não se aplica' THEN'NÃO INFORMADO'
    WHEN `Relacaovitimasuspeito` = 'PADRASTO/ MADRASTA' THEN'PADRASTO/MADRASTA'
    WHEN `Relacaovitimasuspeito` = 'PADRINHO/ MADRINHA' THEN'PADRINHO/MADRINHA'
    WHEN `Relacaovitimasuspeito` = 'PAI' THEN'PAI/MÃE'
    WHEN `Relacaovitimasuspeito` = 'PAI/ MÃE' THEN'PAI/MÃE'
    WHEN `Relacaovitimasuspeito` = 'PRESTADOR DE SERVIÇO' THEN'PRESTADOR(A) DE SERVIÇO'
    WHEN `Relacaovitimasuspeito` = 'Padrasto' THEN'PADRASTO/MADRASTA'
    WHEN `Relacaovitimasuspeito` = 'Padrinho/Madrinha' THEN'PADRINHO/MADRINHA'
    WHEN `Relacaovitimasuspeito` = 'Pai' THEN'PAI/MÃE'
    WHEN `Relacaovitimasuspeito` = 'Primo(a)' THEN'PRIMO(A)'
    WHEN `Relacaovitimasuspeito` = 'Professor(a)' THEN'PROFESSOR(A)'
    WHEN `Relacaovitimasuspeito` = 'Própria vítima' THEN'PRÓPRIA VÍTIMA'
    WHEN `Relacaovitimasuspeito` = 'Sobrinho(a)' THEN'SOBRINHO(A)'
    WHEN `Relacaovitimasuspeito` = 'Sogro(a)' THEN'SOGRO(A)'
    WHEN `Relacaovitimasuspeito` = 'Subordinado' THEN'SUBORDINADO(A)'
    WHEN `Relacaovitimasuspeito` = 'TIO (A)' THEN'TIO(A)'
    WHEN `Relacaovitimasuspeito` = 'TREINADOR/TÉCNICO' THEN'TREINADOR(A)/TÉCNICO(A)'
    WHEN `Relacaovitimasuspeito` = 'Tio (a)' THEN'TIO(A)'
    WHEN `Relacaovitimasuspeito` = 'VIZINHO (A)' THEN'VIZINHO(A)'
    WHEN `Relacaovitimasuspeito` = 'Vizinho (a)' THEN'VIZINHO(A)'
  ELSE
  `Relacaovitimasuspeito`
  END
  AS `Relacaovitimasuspeito`,
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
  Grupovulneravel,
  Pais_da_Vitima,
  Pais_do_suspeito
FROM
  tcc-project-thais.transformed_files._15_NOVA_TABELA_Motivacao