SELECT u.NickName, t.NombreTipo
FROM tipousuario t
INNER JOIN usuario u
ON t.TipoUsuarioId = u.UsuarioId