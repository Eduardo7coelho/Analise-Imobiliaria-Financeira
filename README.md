
# Projeto SQL — Análise de Fundos Imobiliários

Este projeto simula um cenário realista de gestão de ativos de fundos imobiliários.
Utilizando SQL, foram criadas e populadas tabelas com dados fictícios que permitem análises relevantes para tomada de decisão no setor de investimentos imobiliários.

---

## Estrutura do Projeto

O projeto contém 4 tabelas principais:

- **fundos**: informações sobre os fundos de investimento (ID, nome, tipo, gestor);
- **imoveis**: imóveis pertencentes aos fundos (tipo, cidade, estado, valor, custo, vacância etc.);
- **contratos_locacao**: dados de contratos de aluguel (datas, inquilino, índice de reajuste);
- **reajustes_indice**: histórico dos índices IPCA e IGPM dos últimos 10 anos.

---

## Tecnologias Utilizadas

- MySQL (compatível com MariaDB e outras variações)
- Scripts `.sql` para criação e inserção de dados

---

## Funcionalidades e Consultas de Análise

- Análise por categoria dos fundos
- Análise por estado
- Cidades com maior valor de mercado em imóveis
- Fundos com o maior valor de mercado
- Os contratos de locação com maior duração

---

## Arquivos

- `Estrutura.sql`: Script com a criação do DataBase e tabelas
- `Dados.sql`: script com todas as tabelas e dados populados
- `Analises_iniciais`: Visualização dos dados, algumas alterações nas tabelas, views auxiliares com resumos e agregações
- `README.md`: este arquivo de documentação

---

## Como Usar

1. Faça o download do arquivo `.sql` e importe em seu SGBD preferido (MySQL, DBeaver, Workbench etc.).
2. Execute as consultas desejadas para explorar os dados.
3. Adapte as análises para visualizações em Power BI, Tableau ou Metabase se desejar.

---

## Sugestões de Expansão

- Simular cenários de reajuste futuro

---

## Autor

Desenvolvido por Eduardo Coelho.

---
