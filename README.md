# Role-Based Access Control (RBAC) – Database Model  
Projeto para a disciplina **INF1012 – Modelagem de Dados**  
Desenvolvido em SQL com foco em modelagem relacional, normalização, integridade referencial e scripts de criação e popularização de banco de dados.

---

## 🎯 Objetivo

Criar um modelo relacional funcional e bem estruturado para um sistema baseado em controle de acesso por papéis (**RBAC – Role-Based Access Control**), que permita:

- Definir usuários, papéis (roles) e permissões  
- Atribuir papéis aos usuários  
- Associar permissões aos papéis  
- Consultar as permissões de cada usuário com base nos papéis atribuídos  

---

## ✨ Funcionalidades

### Estrutura do Banco de Dados

- Criação de tabelas com integridade referencial:
  - `usuarios`
  - `papeis`
  - `permissoes`
  - `usuarios_papeis`
  - `papeis_permissoes`

- Relacionamentos com chaves estrangeiras (foreign keys)  
- Uso de chaves primárias compostas nas tabelas associativas  
- Adoção de boas práticas de normalização (3FN)  

---

## 📁 Scripts SQL

### `sql/init.sql`
- Criação do banco de dados e das tabelas  
- Definição de chaves primárias e estrangeiras  
- Comentários explicativos para cada bloco  

### `sql/populate.sql`
- Inserção de dados iniciais de teste:
  - Usuários de exemplo  
  - Papéis como “Admin”, “Editor”, “Leitor”  
  - Permissões como “Criar Post”, “Editar Post”, “Visualizar Post”  
  - Relacionamentos entre usuários ↔ papéis e papéis ↔ permissões  

---

## 🧠 Conceitos Aprendidos e Aplicados

Durante o desenvolvimento do projeto, foram estudados e aplicados os seguintes conceitos fundamentais de modelagem de dados:

### Modelagem Relacional

- Entidades, atributos e relacionamentos  
- Cardinalidade (1:N, N:N)  
- Diagramas Entidade-Relacionamento  

### Normalização

- Remoção de redundância  
- Aplicação das formas normais (1FN, 2FN, 3FN)  

### Integridade Referencial

- Uso correto de chaves estrangeiras  
- ON DELETE e ON UPDATE para garantir consistência  

### Scripts SQL

- Comandos `CREATE TABLE`, `INSERT INTO`  
- Criação de scripts organizados para facilitar testes  
- Estrutura modular separando criação e popularização  

### Ferramentas

- SQLite como sistema de banco de dados leve e portátil  
- VS Code com extensão SQL para facilitar a escrita e visualização dos scripts  
- Ferramentas visuais para modelagem (ex: dbdiagram.io)  

---

## 📂 Estrutura do Projeto

``` bash

modelo_sqlite/
├── diagramas
├── sql/
│   ├── init.sql
│   ├── populate.sql
    ├── queries.sql
├── rbac.db

```