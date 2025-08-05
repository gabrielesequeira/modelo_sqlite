CREATE TABLE Usuario (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
);

CREATE TABLE Papel (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

CREATE TABLE UsuarioPapel (
    id_usuario INTEGER,
    id_papel INTEGER,
    PRIMARY KEY (id_usuario, id_papel),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id),
    FOREIGN KEY (id_papel) REFERENCES Papel(id)
);

CREATE TABLE Modulo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

CREATE TABLE Permissao (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    id_modulo INTEGER,
    FOREIGN KEY (id_modulo) REFERENCES Modulo(id)
);

CREATE TABLE PapelPermissao (
    id_papel INTEGER,
    id_permissao INTEGER,
    PRIMARY KEY (id_papel, id_permissao),
    FOREIGN KEY (id_papel) REFERENCES Papel(id),
    FOREIGN KEY (id_permissao) REFERENCES Permissao(id)
);

CREATE TABLE Acesso (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_usuario INTEGER,
    id_modulo INTEGER,
    acao TEXT,
    data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id),
    FOREIGN KEY (id_modulo) REFERENCES Modulo(id)
);
