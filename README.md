# Loan Data Pipeline
# Descrição

Este projeto consiste em um pipeline completo de análise de dados de empréstimos, desde a extração e limpeza dos dados até a integração com banco de dados SQL e análises exploratórias.
O objetivo é criar um fluxo organizado que permita extrair insights sobre padrões de concessão de empréstimos, histórico de clientes e finalidade dos empréstimos.

Estrutura do Projeto

O repositório está organizado da seguinte forma:

```loan-data-pipeline/
│
├── database_original/       # Arquivos CSV originais fornecidos
├── database_tratados/       # DataFrames tratados (DF1 e DF2)
├── notebooks/               # Notebooks de limpeza e integração SQL
├── sql/                     # Scripts de criação de tabelas e queries
└── README.md                # Este arquivo
```

# Tecnologias Usadas

Python (Pandas, Jupyter Notebook)

SQL Server (T-SQL)

Git e GitHub para versionamento

# Objetivo

O objetivo do projeto é analisar dados de clientes e empréstimos para:

Entender padrões de concessão de empréstimos.

Avaliar a relação entre histórico de crédito, valor solicitado e aprovação.

Identificar finalidades mais frequentes de empréstimos.

Criar um pipeline replicável de integração e análise de dados.

# Metodologia

Extração de Dados: importação de arquivos CSV originais.

Limpeza e Tratamento: substituição de valores nulos, padronização de colunas e tipos de dados.

Integração SQL: criação de tabelas no SQL Server e inserção de dados tratados via Python.

Análises Exploratório: queries SQL para investigar:

Relação entre valor solicitado (Amount) e sucesso do empréstimo.

Relação entre prazo (Term) e sucesso do empréstimo.

Saldo médio sem hipoteca por status de aprovação.

Finalidades de empréstimos mais frequentes.

# Principais Insights

A média do valor solicitado difere significativamente entre empréstimos aprovados e reprovados.

O saldo médio sem hipoteca tende a ser maior para clientes com empréstimos reprovados.

Finalidades mais comuns de empréstimos incluem compra de carro e melhorias residenciais.
