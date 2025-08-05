-- Inserir Usuários
INSERT INTO Usuario (nome, email) VALUES ('Ana Silva', 'ana@example.com');
INSERT INTO Usuario (nome, email) VALUES ('Bruno Costa', 'bruno@example.com');
INSERT INTO Usuario (nome, email) VALUES ('Carla Souza', 'carla@example.com');

-- Inserir Papéis
INSERT INTO Papel (nome) VALUES ('Administrador');
INSERT INTO Papel (nome) VALUES ('Editor');
INSERT INTO Papel (nome) VALUES ('Leitor');

-- Relacionar Usuários com Papéis
INSERT INTO UsuarioPapel (id_usuario, id_papel) VALUES (1, 1); -- Ana é Administradora
INSERT INTO UsuarioPapel (id_usuario, id_papel) VALUES (2, 2); -- Bruno é Editor
INSERT INTO UsuarioPapel (id_usuario, id_papel) VALUES (3, 3); -- Carla é Leitor

-- Inserir Módulos
INSERT INTO Modulo (nome) VALUES ('Relatórios');
INSERT INTO Modulo (nome) VALUES ('Configurações');

-- Inserir Permissões
INSERT INTO Permissao (nome, id_modulo) VALUES ('Visualizar Relatórios', 1);
INSERT INTO Permissao (nome, id_modulo) VALUES ('Editar Relatórios', 1);
INSERT INTO Permissao (nome, id_modulo) VALUES ('Gerenciar Configurações', 2);

-- Relacionar Papéis com Permissões
INSERT INTO PapelPermissao (id_papel, id_permissao) VALUES (1, 1); -- Admin -> Visualizar Relatórios
INSERT INTO PapelPermissao (id_papel, id_permissao) VALUES (1, 2); -- Admin -> Editar Relatórios
INSERT INTO PapelPermissao (id_papel, id_permissao) VALUES (1, 3); -- Admin -> Gerenciar Configurações

INSERT INTO PapelPermissao (id_papel, id_permissao) VALUES (2, 1); -- Editor -> Visualizar Relatórios
INSERT INTO PapelPermissao (id_papel, id_permissao) VALUES (2, 2); -- Editor -> Editar Relatórios

INSERT INTO PapelPermissao (id_papel, id_permissao) VALUES (3, 1); -- Leitor -> Visualizar Relatórios

-- Registrar Acessos
INSERT INTO Acesso (id_usuario, id_modulo, acao) VALUES (1, 1, 'Visualizou Relatórios');
INSERT INTO Acesso (id_usuario, id_modulo, acao) VALUES (2, 1, 'Editou Relatórios');
INSERT INTO Acesso (id_usuario, id_modulo, acao) VALUES (1, 2, 'Gerenciou Configurações');
