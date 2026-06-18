# IAgentics — Processo Seletivo Técnico

Ferramenta de avaliação prática modular para seleção de estagiários em IA.

## Deploy no Railway

1. Faça push deste repositório para o GitHub
2. No Railway: **New Project → Deploy from GitHub Repo**
3. Railway detecta o `package.json` automaticamente e faz o deploy
4. Acesse via URL gerada pelo Railway

## Uso local

```bash
npm install
npm start
# Acesse: http://localhost:3000
```

## Preparação antes da prova (Trilha SQL)

```bash
# Gerar o banco de dados para entregar ao candidato
sqlite3 pedidos.db < setup.sql
```

Entregue o arquivo `pedidos.db` ao candidato no início da Parte 2 — Trilha SQL.

## Estrutura

```
index.html   → ferramenta de avaliação (interface do avaliador)
package.json → deploy Railway / Node.js
setup.sql    → script de criação do banco SQLite da Trilha SQL
.gitignore   → ignora node_modules, .env, *.db
```

## Fluxo da prova

| Parte | Duração | Pontos |
|-------|---------|--------|
| 12 questões conceituais (Python / IA / SQL+Git) | 10 min | 30 pts |
| Mini-desafio debug (Python bug + SQL lógico) | 14 min | 10 pts |
| Trilha prática escolhida | 25 min | 50 pts |
| Apresentação + perguntas do avaliador | 5 min | +10 bônus |
| **Total** | **60 min** | **100 pts** |
