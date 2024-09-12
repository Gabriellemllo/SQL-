CREATE TABLE "Usuario" (
  "ID" int PRIMARY KEY,
  "Nome" varchar,
  "Email" varchar,
  "Data_cadastro" date
);

CREATE TABLE "Livro" (
  "ID" int PRIMARY KEY,
  "Titulo" varchar,
  "ISBN" varchar,
  "Ano_Publicacao" int,
  "ID_Editora" int
);

CREATE TABLE "Autor" (
  "ID" int PRIMARY KEY,
  "Nome" varchar,
  "Nacionalidade" varchar
);

CREATE TABLE "Emprestimo" (
  "ID" int PRIMARY KEY,
  "Data_Emprestimo" date,
  "Data_Devolucao" date,
  "ID_Usuario" int,
  "ID_Livro" int
);

CREATE TABLE "Categoria" (
  "ID" int PRIMARY KEY,
  "Nome" varchar
);

CREATE TABLE "Editora" (
  "ID" int PRIMARY KEY,
  "Nome" varchar,
  "Endereco" varchar
);

CREATE TABLE "Livro_Autor" (
  "ID_Livro" int,
  "ID_Autor" int
);

CREATE TABLE "Livro_Categoria" (
  "ID_Livro" int,
  "ID_Categoria" int
);

ALTER TABLE "Livro" ADD FOREIGN KEY ("ID_Editora") REFERENCES "Editora" ("ID");

ALTER TABLE "Emprestimo" ADD FOREIGN KEY ("ID_Usuario") REFERENCES "Usuario" ("ID");

ALTER TABLE "Emprestimo" ADD FOREIGN KEY ("ID_Livro") REFERENCES "Livro" ("ID");

ALTER TABLE "Livro_Autor" ADD FOREIGN KEY ("ID_Livro") REFERENCES "Livro" ("ID");

ALTER TABLE "Livro_Autor" ADD FOREIGN KEY ("ID_Autor") REFERENCES "Autor" ("ID");

ALTER TABLE "Livro_Categoria" ADD FOREIGN KEY ("ID_Livro") REFERENCES "Livro" ("ID");

ALTER TABLE "Livro_Categoria" ADD FOREIGN KEY ("ID_Categoria") REFERENCES "Categoria" ("ID");
