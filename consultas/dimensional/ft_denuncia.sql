INSERT INTO
  tcc-project-thais.star_schema.ft_denuncia (
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
    sk_Vitima,
    sk_Datadecadastro,
    sk_GrupoVulnerario,
    sk_Suspeito,
    sk_tipoViolacao)
SELECT
  tf.Canaldeatendimento,
  tf.Cenariodaviolacao,
  tf.Denunciaemergencial,
  tf.Denunciante,
  tf.Pais,
  tf.UF,
  tf.Frequencia,
  tf.Iniciodasviolacoes,
  tf.sl_quantidade_vitimas,
  tf.Motivacao,
  vt.sk_Vitima,
  dt.sk_Datadecadastro,
  gv.sk_GrupoVulnerario,
  sp.sk_Suspeito,
  tv.sk_tipoViolacao,
FROM
  tcc-project-thais.transformed_files._47_NOVA_TABELA_ids_vitima_e_suspeito tf
JOIN
  tcc-project-thais.star_schema.dm_data dt
ON
  tf.Datadecadastro = dt.Datadecadastro
JOIN
  tcc-project-thais.star_schema.dm_grupoVulnerario gv
ON
  tf.Grupovulneravel = gv.Grupovulneravel 
JOIN 
tcc-project-thais.star_schema.dm_suspeito sp
ON
tf.Id_suspeito = sp.Id_suspeito
JOIN
  tcc-project-thais.star_schema.dm_tipoViolacao tv
ON
  tf.violacao = tv.violacao
JOIN
tcc-project-thais.star_schema.dm_vitima vt
ON
tf.Id_vitima = vt.id_vitima