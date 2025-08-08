-- Listar todos os usuários
SELECT * FROM Usuario;

-- Listar todos os papéis
SELECT * FROM Papel;

-- Listar os relacionamentos entre usuários e seus papéis
SELECT U.nome AS Usuario, P.nome AS Papel
FROM UsuarioPapel UP
JOIN Usuario U ON UP.id_usuario = U.id
JOIN Papel P ON UP.id_papel = P.id;

-- Listar todos os módulos
SELECT * FROM Modulo;

-- Listar todas as permissões com seus respectivos módulos
SELECT Permissao.nome AS Permissao, Modulo.nome AS Modulo
FROM Permissao
JOIN Modulo ON Permissao.id_modulo = Modulo.id;

-- Listar as permissões de cada papel
SELECT Pa.nome AS Papel, Pe.nome AS Permissao
FROM PapelPermissao PP
JOIN Papel Pa ON PP.id_papel = Pa.id
JOIN Permissao Pe ON PP.id_permissao = Pe.id;

-- Mostrar acessos realizados pelos usuários
SELECT U.nome AS Usuario, M.nome AS Modulo, A.acao AS Acao
FROM Acesso A
JOIN Usuario U ON A.id_usuario = U.id
JOIN Modulo M ON A.id_modulo = M.id;
