SELECT * FROM contratos_locacao;

SELECT nome_fundo FROM fundos;

SET SQL_SAFE_UPDATES = 0;
UPDATE fundos
SET nome_fundo = REPLACE(nome_fundo, 'Fundo Imobiliário ', '');
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM contratos_locacao;
SELECT * FROM fundos;
SELECT * FROM imoveis;
SELECT * FROM reajuste_indice;

CREATE VIEW Top_10_Maiores_Contratos AS
SELECT 
	cl.id_imovel,
    cl.locatario,
    cl.data_inicio,
    cl.data_fim,
    ROUND(DATEDIFF(data_fim, data_inicio)/30.44, 2) AS Tempo_de_contrato_meses,
    i.estado,
    i.cidade,
    f.nome_fundo
FROM contratos_locacao cl
JOIN imoveis i ON cl.id_imovel = i.id_imovel
JOIN fundos f ON i.id_fundo = f.id_fundo
ORDER BY Tempo_de_contrato_meses DESC
LIMIT 10;

CREATE VIEW Top_10_Fundos AS
SELECT
	f.nome_fundo,
	SUM(i.valor_mercado) AS Valor_Mercado,
	SUM(i.valor_aquisicao) AS Valor_Aquisicao,
	SUM(i.custo_mensal) AS Custo_Mensal,
	AVG(i.vacancia_percentual) AS Vacancia_media,
	COUNT(i.tipo) AS Qtd_Imoveis,
    AVG(ROUND(DATEDIFF(cl.data_fim, cl.data_inicio)/30.44, 2)) AS Média_contrato_meses
FROM fundos f
JOIN imoveis i ON f.id_fundo = i.id_fundo
JOIN contratos_locacao cl ON i.id_imovel = cl.id_imovel
GROUP BY f.nome_fundo
ORDER BY Valor_Mercado DESC
LIMIT 10;

CREATE VIEW Ranking_Estado AS
SELECT
    i.estado,
    SUM(i.valor_mercado) AS Valor_Mercado,
	SUM(i.valor_aquisicao) AS Valor_Aquisicao,
	SUM(i.custo_mensal) AS Custo_Mensal,
    AVG(i.vacancia_percentual) AS Vacancia_media,
    COUNT(*) AS Qtd_Imoveis,
    AVG(ROUND(DATEDIFF(cl.data_fim, cl.data_inicio)/30.44, 2)) AS Média_contrato_meses
FROM imoveis i
JOIN contratos_locacao cl ON i.id_imovel = cl.id_imovel
GROUP BY estado
ORDER BY Valor_Mercado DESC;

CREATE VIEW Top_10_cidades AS
SELECT
    cidade,
	SUM(i.valor_mercado) AS Valor_Mercado,
	SUM(i.valor_aquisicao) AS Valor_Aquisicao,
	SUM(i.custo_mensal) AS Custo_Mensal,
    AVG(i.vacancia_percentual) AS Vacancia_media,
    COUNT(*) AS Qtd_Imoveis,
    AVG(ROUND(DATEDIFF(cl.data_fim, cl.data_inicio)/30.44, 2)) AS Média_contrato_meses
FROM imoveis i
JOIN contratos_locacao cl ON i.id_imovel = cl.id_imovel
GROUP BY cidade
ORDER BY Valor_Mercado DESC
LIMIT 10;

CREATE VIEW Categorias AS
SELECT
	i.tipo AS Categoria,
    SUM(i.valor_mercado) AS Valor_Mercado,
	SUM(i.valor_aquisicao) AS Valor_Aquisicao,
	SUM(i.custo_mensal) AS Custo_Mensal,
    AVG(i.vacancia_percentual) AS Vacancia_media,
    COUNT(*) AS Quantidade,
    AVG(ROUND(DATEDIFF(cl.data_fim, cl.data_inicio)/30.44, 2)) AS Média_contrato_meses
FROM imoveis i
JOIN contratos_locacao cl ON i.id_imovel = cl.id_imovel
GROUP BY tipo
ORDER BY Valor_Mercado;

SELECT * FROM Top_10_maiores_contratos;
SELECT * FROM Top_10_Fundos;
SELECT * FROM Ranking_Estado;
SELECT * FROM Top_10_cidades;
SELECT * FROM Categorias;