CREATE TABLE Vendedores (
  id_vendedor              INT           NOT NULL    IDENTITY    PRIMARY KEY,
  comissao float(5),
  nome_vendedor varchar(20)
);

CREATE TABLE Vendas (
  id_venda              INT           NOT NULL    IDENTITY    PRIMARY KEY,
  id_vendedor int,
  data_venda date,
  valor_venda float(5),
  valor_desconto float(5),
  valor_total float(5),
   -- Definição da chave estrangeira
  CONSTRAINT FK_VendedorID FOREIGN KEY (id_vendedor) REFERENCES Vendedores(id_vendedor)
);