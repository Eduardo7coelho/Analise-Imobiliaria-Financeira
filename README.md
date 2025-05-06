
# Projeto SQL — Análise de Fundos Imobiliários

Este projeto simula um cenário realista de gestão de ativos de fundos imobiliários.
Utilizando SQL, foram criadas e populadas tabelas com dados fictícios que permitem análises relevantes para tomada de decisão no setor de investimentos imobiliários.
Desenvolvimento de Dashboard no Power BI com análises e visualizações interativas.

---

## Estrutura do Projeto

O projeto contém 4 tabelas principais:

- **fundos**: informações sobre os fundos de investimento (ID, nome, tipo, gestor);
- **imoveis**: imóveis pertencentes aos fundos (tipo, cidade, estado, valor, custo, vacância etc.);
- **contratos_locacao**: dados de contratos de aluguel (datas, inquilino, índice de reajuste);
- **reajustes_indice**: histórico dos índices IPCA e IGPM dos últimos 10 anos.

---

## Tecnologias Utilizadas

- MySQL: Gerar a base de dados.
- Scripts `.sql`: Criação e inserção de dados.
- Power BI: Visualizações interativas.

---

## Funcionalidades e Consultas de Análise
**1. MySQL:**
- Análise por categoria dos fundos
- Análise por estado
- Cidades com maior valor de mercado em imóveis
- Fundos com o maior valor de mercado
- Os contratos de locação com maior duração
**2. Power BI:**
- Visão geral das métricas financeiras da empresa, envolvendo todas as empresas.
- Análise individual de cada fundo, com tabela detalhada exibindo todos os imóveis relacionados a cada fundo.

---

## Arquivos

- `Estrutura.sql`: Script com a criação do DataBase e tabelas
- `Dados.sql`: Script com todas as tabelas e dados populados
- `Analises_iniciais.sql`: Visualização dos dados, algumas alterações nas tabelas, views auxiliares com resumos e agregações
- `Estados_bandeiras.csv`: Arquivo CSV contendo os links diretos para as imagens das bandeiras..
- `README.md`: Arquivo de documentação
- `Dashboard.pbix`: Visualizações interativas no Power BI.

---

## Como Usar

1. Faça o download do arquivo `.sql` e importe em seu SGBD preferido (MySQL, DBeaver, Workbench etc.).
2. Execute as consultas desejadas para explorar os dados.
3. Adapte as análises para visualizações em Power BI, Tableau ou Metabase se desejar.
4. Acesse os relatórios interativos no Power BI para explorar os fundos imobiliários e as métricas de imóveis.

---

## Sugestões de Expansão

- Simular cenários de reajuste futuro

---

## Autor

Desenvolvido por Eduardo Coelho.

---
