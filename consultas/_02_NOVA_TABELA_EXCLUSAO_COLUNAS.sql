CREATE TABLE transformed_files._02_NOVA_TABELA_EXCLUSAO_COLUNAS
AS SELECT
Datadecadastro,
Canaldeatendimento,
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
Nacionalidadedavitima,
Deficienciadavitima,
Doencararadavitima,
Paisdavitima,
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
Suspeitonacionalidade,
Deficienciadosuspeito,
Doencararadosuspeito,
Suspeitopreso,
Paisdosuspeito,
UFdosuspeito,
Profissaodosuspeito,
Graudeinstrucaodosuspeito,
RacaCordosuspeito,
SuspeitoEtnia,
Faixaderendadosuspeito,
VinculoOrgaoPJdosuspeito,
sl_suspeito_ramo,
violacao,
FROM
  tcc-project-thais.transformed_files._01_NOVA_TABELA_LIGUE180_2019_A_2023T1;
