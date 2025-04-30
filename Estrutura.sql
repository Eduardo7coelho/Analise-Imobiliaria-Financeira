CREATE DATABASE holding_imobiliarios_financeiros;

USE holding_imobiliarios_financeiros;

# Criando as tabelas

CREATE TABLE fundos (
	id_fundo INT PRIMARY KEY,
    nome_fundo TEXT,
    tipo_fundo TEXT,
    gestor TEXT
);

CREATE TABLE imoveis (
	id_imovel INT PRIMARY KEY,
    nome TEXT,
    tipo TEXT,
    cidade TEXT,
    estado TEXT,
    valor_aquisicao DECIMAL(12,2),
    valor_mercado DECIMAL(12,2),
    receita_mensal DECIMAL(10,2),
    vacancia_percentual DECIMAL(5,2),
    custo_mensal DECIMAL(10,2),
    id_fundo INT,
    FOREIGN KEY (id_fundo) REFERENCES fundos(id_fundo)
);

CREATE TABLE contratos_locacao (
	id_contrato INT PRIMARY KEY,
    id_imovel INT,
    data_inicio DATE,
    data_fim DATE,
    locatario TEXT,
    indice_reajuste TEXT,
    FOREIGN KEY (id_imovel) REFERENCES imoveis(id_imovel)    
);

CREATE TABLE reajuste_indice (
	ano INT PRIMARY KEY,
    ipca DECIMAL(5,2),
    igpm DECIMAL(5,2)
);