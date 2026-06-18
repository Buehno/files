# Estimativa de Tempo do Projeto — Cenários de Senioridade
## Plataforma de Inteligência Baseada em GenAI — IAgentics

---

## 1. Metodologia de Estimativa

A estimativa considera:
- **Sprints de 2 semanas** como unidade base de planejamento
- **Fases sequenciais com paralelismo parcial** entre módulos independentes
- **Buffers de risco** ajustados por senioridade do time
- **Sprints de hardening** para qualidade, segurança e performance
- Todas as fases incluem: design → desenvolvimento → testes → documentação

### Premissas Gerais
- Dados e acesso ao ambiente do cliente disponíveis no kick-off
- Infraestrutura cloud provisionada até o fim da Fase 1
- Cliente disponível para validações semanais (mínimo 2h/semana)
- Escopo fixo conforme DPR — mudanças entram em change control

---

## 2. Fases do Projeto

| # | Fase | Descrição |
|---|------|-----------|
| F0 | Discovery & Arquitetura | Entendimento de dados, definição de ADRs, setup de ambiente |
| F1 | Fundação de Dados | Pipeline de ingestão, processamento, banco vetorial |
| F2 | Motor RAG | Retrieval, reranking, geração, avaliação de qualidade |
| F3 | Web Ingestion | Batch crawling, integração com buscas, atualização contínua |
| F4 | Interfaces | Chatbot, API REST, painel admin |
| F5 | Exploração Analítica | Dashboard analítico, relatórios, exportações |
| F6 | Hardening & MLOps | Segurança, performance, observabilidade, LGPD |
| F7 | Go-Live & Estabilização | Deploy produção, treinamento usuários, suporte inicial |

---

## 3. Cenário 1 — Time Júnior

### Composição do Time
| Papel | Nível | FTE |
|-------|-------|-----|
| Tech Lead (externo/consultor) | Senior | 0.5 |
| Engenheiro de Dados | Júnior | 1.0 |
| Engenheiro ML/IA | Júnior | 1.0 |
| Engenheiro Backend | Júnior | 1.0 |
| Engenheiro Frontend | Júnior | 1.0 |
| DevOps | Júnior | 0.5 |
| Product Manager | Pleno | 0.8 |

### Estimativa por Fase

| Fase | Semanas | Sprints | Observações |
|------|---------|---------|-------------|
| F0 — Discovery & Arquitetura | 4 | 2 | Tech Lead lidera; júniors aprendem |
| F1 — Fundação de Dados | 8 | 4 | Curva de aprendizado em chunking e embeddings |
| F2 — Motor RAG | 10 | 5 | Maior dificuldade; muita experimentação |
| F3 — Web Ingestion | 4 | 2 | Bugs de scraping inesperados |
| F4 — Interfaces | 8 | 4 | Frontend consome mais tempo sem experiência |
| F5 — Exploração Analítica | 6 | 3 | Visualizações e filtros demandam atenção |
| F6 — Hardening & MLOps | 8 | 4 | Segurança e observabilidade são complexos |
| F7 — Go-Live & Estabilização | 4 | 2 | Bugs de integração frequentes |
| **TOTAL** | **52** | **26** | **~13 meses** |

### Riscos Específicos — Time Júnior
- ⚠️ Alto risco de retrabalho por design inadequado
- ⚠️ Dependência crítica do Tech Lead externo (gargalo)
- ⚠️ Curva de aprendizado em RAG production significativa
- ⚠️ Bugs de segurança e LGPD mais prováveis
- ⚠️ Qualidade de código requer revisão constante

### Buffer Recomendado
**+30% sobre estimativa** = ~68 semanas totais (~17 meses)

---

## 4. Cenário 2 — Time Pleno

### Composição do Time
| Papel | Nível | FTE |
|-------|-------|-----|
| Tech Lead | Pleno+ / Senior | 1.0 |
| Engenheiro de Dados | Pleno | 1.0 |
| Engenheiro ML/IA | Pleno | 1.0 |
| Engenheiro Backend | Pleno | 1.0 |
| Engenheiro Frontend | Pleno | 1.0 |
| DevOps | Pleno | 0.7 |
| Product Manager | Pleno | 0.8 |

### Estimativa por Fase

| Fase | Semanas | Sprints | Observações |
|------|---------|---------|-------------|
| F0 — Discovery & Arquitetura | 3 | 1.5 | Decisões mais ágeis, setup eficiente |
| F1 — Fundação de Dados | 6 | 3 | Boa velocidade, pipelines bem estruturados |
| F2 — Motor RAG | 7 | 3.5 | Conhecimento de LLMs aplica bem |
| F3 — Web Ingestion | 3 | 1.5 | Scrapers funcionais com menos debugging |
| F4 — Interfaces | 6 | 3 | Componentes reutilizáveis aceleram |
| F5 — Exploração Analítica | 4 | 2 | Libs de visualização dominadas |
| F6 — Hardening & MLOps | 6 | 3 | Conhecimento de boas práticas já internalizado |
| F7 — Go-Live & Estabilização | 3 | 1.5 | Menos bugs de integração |
| **TOTAL** | **38** | **19** | **~9.5 meses** |

### Riscos Específicos — Time Pleno
- ⚠️ Risco moderado em pontos de alta complexidade (RAG avançado, multi-tenant)
- ⚠️ Pode precisar de consultoria externa para tópicos muito específicos
- ✅ Bom equilíbrio entre autonomia e custo

### Buffer Recomendado
**+20% sobre estimativa** = ~46 semanas totais (~11.5 meses)

---

## 5. Cenário 3 — Time Sênior

### Composição do Time
| Papel | Nível | FTE |
|-------|-------|-----|
| Tech Lead / Staff Engineer | Senior / Staff | 1.0 |
| Engenheiro de Dados | Senior | 1.0 |
| Engenheiro ML/IA | Senior | 1.0 |
| Engenheiro Backend | Senior | 1.0 |
| Engenheiro Frontend | Senior | 1.0 |
| DevOps | Senior | 0.7 |
| Product Manager | Senior | 0.8 |

### Estimativa por Fase

| Fase | Semanas | Sprints | Observações |
|------|---------|---------|-------------|
| F0 — Discovery & Arquitetura | 2 | 1 | Setup e decisões rápidas e assertivas |
| F1 — Fundação de Dados | 4 | 2 | Pipelines produção-ready desde o início |
| F2 — Motor RAG | 5 | 2.5 | Experiência em RAG evita retrabalho |
| F3 — Web Ingestion | 2 | 1 | Scrapers robustos, poucos bugs |
| F4 — Interfaces | 4 | 2 | Componentes ricos e testados |
| F5 — Exploração Analítica | 3 | 1.5 | Dashboard analítico de alta qualidade |
| F6 — Hardening & MLOps | 4 | 2 | Segurança e observabilidade integradas desde cedo |
| F7 — Go-Live & Estabilização | 2 | 1 | Deploy fluido, poucos incidentes |
| **TOTAL** | **26** | **13** | **~6.5 meses** |

### Riscos Específicos — Time Sênior
- ✅ Alta capacidade de antever e mitigar riscos
- ✅ Design robusto reduz retrabalho significativamente
- ✅ Código de alta qualidade com menos bugs em produção
- ⚠️ Custo por hora mais elevado
- ⚠️ Profissionais sênior disponíveis no mercado são escassos

### Buffer Recomendado
**+15% sobre estimativa** = ~30 semanas totais (~7.5 meses)

---

## 6. Cenário 4 — Mix de Senioridade (Recomendado)

### Composição do Time (Estratégia Ótima)
| Papel | Nível | FTE | Justificativa |
|-------|-------|-----|---------------|
| Tech Lead / Arquiteto IA | Senior | 1.0 | Decisões críticas exigem sênior |
| Engenheiro de Dados | Senior | 1.0 | Fundação de dados é crítica |
| Engenheiro ML/IA | Senior | 1.0 | RAG production requer experiência |
| Engenheiro Backend | Pleno | 1.0 | Bom custo-benefício para APIs |
| Engenheiro Frontend | Pleno | 1.0 | UI é importante mas menos crítica |
| DevOps | Pleno | 0.7 | Azure bem documentado facilita |
| Product Manager | Pleno | 0.8 | Gestão com boa comunicação |

### Estimativa por Fase

| Fase | Semanas | Sprints | Observações |
|------|---------|---------|-------------|
| F0 — Discovery & Arquitetura | 2 | 1 | Liderança sênior garante assertividade |
| F1 — Fundação de Dados | 5 | 2.5 | Dados sênior + backend pleno entregam bem |
| F2 — Motor RAG | 6 | 3 | ML sênior acelera muito esta fase |
| F3 — Web Ingestion | 2 | 1 | Dados sênior resolve com qualidade |
| F4 — Interfaces | 6 | 3 | Frontend pleno: bom resultado, prazo razoável |
| F5 — Exploração Analítica | 4 | 2 | Colaboração frontend + backend |
| F6 — Hardening & MLOps | 5 | 2.5 | Seniores garantem padrão de produção |
| F7 — Go-Live & Estabilização | 2 | 1 | Deploy controlado |
| **TOTAL** | **32** | **16** | **~8 meses** |

### Buffer Recomendado
**+15% sobre estimativa** = ~37 semanas totais (~9 meses)

---

## 7. Quadro Comparativo dos Cenários

| Cenário | Duração Estimada | Com Buffer | Custo Relativo | Risco Técnico |
|---------|-----------------|------------|---------------|---------------|
| Júnior | 52 semanas (~13 meses) | ~68 sem. (~17 meses) | Baixo | Muito Alto |
| Pleno | 38 semanas (~9.5 meses) | ~46 sem. (~11.5 meses) | Médio | Médio |
| Sênior | 26 semanas (~6.5 meses) | ~30 sem. (~7.5 meses) | Alto | Baixo |
| **Mix (Recomendado)** | **32 semanas (~8 meses)** | **~37 sem. (~9 meses)** | **Médio-Alto** | **Médio-Baixo** |

---

## 8. Cronograma Visual — Cenário Mix (Recomendado)

```
Mês 1   Mês 2   Mês 3   Mês 4   Mês 5   Mês 6   Mês 7   Mês 8   Mês 9
  │───────┼───────┼───────┼───────┼───────┼───────┼───────┼───────┤
  ├─F0────┤
  │       ├─F1────────────┤
  │               ├───F2──────────────┤
  │                       ├─F3──┤
  │               ├───────────────F4──────────────┤
  │                               ├───F5──────────┤
  │                                       ├───F6──────────┤
  │                                               ├─F7────┤
  │       Discovery│Dados+RAG     │Interfaces     │Hardening│GoLive
```

### Marcos Principais (Mix de Senioridade)
| Marco | Semana | Entregável |
|-------|--------|-----------|
| M0 — Kick-off | Sem. 1 | Arquitetura aprovada, ambiente setup |
| M1 — PoC RAG | Sem. 6 | Demo do motor RAG com dados reais do cliente |
| M2 — Pipeline Estável | Sem. 10 | Ingestão completa funcionando |
| M3 — Beta Interno | Sem. 18 | Chatbot + API em ambiente de homologação |
| M4 — Beta Cliente | Sem. 24 | Acesso para usuários-chave do cliente |
| M5 — Go-Live | Sem. 32 | Deploy produção, treinamento completo |
| M6 — Estabilização | Sem. 37 | Suporte pós-go-live encerrado |

