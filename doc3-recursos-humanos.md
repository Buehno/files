# Recursos Humanos — Perfis, Skills e Estrutura de Time
## Plataforma de Inteligência Baseada em GenAI — IAgentics

---

## 1. Visão Geral da Estrutura de Time

O projeto demanda um time multidisciplinar cobrindo três domínios principais: **Engenharia de Dados & IA**, **Engenharia de Software & Backend**, e **Produto & Entrega**. A composição ideal varia conforme a estratégia de senioridade adotada.

---

## 2. Papéis Necessários e Descrição Detalhada

---

### PAPEL 1: Tech Lead / Arquiteto de Soluções de IA

**Quantidade:** 1 (dedicação: 100%)
**Criticidade:** Essencial — sem este papel o projeto não deve ser iniciado

#### Responsabilidades
- Definir e validar a arquitetura técnica end-to-end da plataforma
- Tomar decisões de design (ADRs) e garantir sua implementação
- Resolver bloqueios técnicos e orientar o time
- Revisar código em pontos críticos de segurança e performance
- Interface técnica com o cliente (discovery, demos técnicas)
- Definir estratégia de avaliação RAG e padrões de qualidade

#### Skills Obrigatórias
- ✅ Arquitetura de sistemas distribuídos (5+ anos)
- ✅ Experiência comprovada em RAG production (mínimo 2 projetos entregues)
- ✅ Domínio de LLMs: prompting avançado, fine-tuning, guardrails
- ✅ Bancos vetoriais (Pinecone, Qdrant, Weaviate — mínimo 1 em produção)
- ✅ Python avançado, FastAPI ou equivalente
- ✅ Cloud (Azure ou AWS — nível Associate ou superior)
- ✅ Segurança de aplicações (OWASP, JWT, OAuth2)
- ✅ Inglês técnico para documentação

#### Skills Desejáveis
- 💡 Experiência com LlamaIndex e/ou LangChain em produção
- 💡 Conhecimento de MLOps (MLflow, deployment de modelos)
- 💡 Experiência com frameworks de avaliação RAG (RAGAS, TruLens)
- 💡 Background em NLP (não obrigatório se tiver forte background em LLM)

#### Certificações Valorizadas
- AWS Solutions Architect / Azure Solutions Architect Expert
- Coursera Deep Learning Specialization ou equivalente

---

### PAPEL 2: Engenheiro de Dados Senior

**Quantidade:** 1 (dedicação: 100%)
**Criticidade:** Essencial — é o responsável pela fundação dos dados

#### Responsabilidades
- Projetar e implementar pipelines de ingestão multiformato
- Configurar e manter orquestrador de dados (Airflow / Prefect)
- Implementar web crawling e batch ingestion
- Garantir qualidade, limpeza e normalização de dados
- Implementar estratégias de chunking e pré-processamento para RAG
- Monitorar health dos pipelines e resolver falhas

#### Skills Obrigatórias
- ✅ Pipelines de dados com Python (Pandas, Polars, PyArrow)
- ✅ Orquestradores: Apache Airflow ou Prefect ou Dagster (1+ em produção)
- ✅ Processamento de documentos: PyMuPDF, python-docx, openpyxl, Unstructured
- ✅ Web scraping: Scrapy, Playwright, BeautifulSoup
- ✅ Filas de mensagens: RabbitMQ, Kafka, ou Azure Service Bus
- ✅ SQL avançado (PostgreSQL de preferência)
- ✅ Docker e básico de Kubernetes
- ✅ Cloud storage (Azure Blob, S3 ou equivalente)

#### Skills Desejáveis
- 💡 Experiência com processamento de texto e NLP básico
- 💡 Apache Spark para volumes muito grandes
- 💡 Conhecimento de formatos de dados estruturados (Parquet, Delta Lake)
- 💡 Experiência com bancos vetoriais (diferencial significativo)

---

### PAPEL 3: Engenheiro de ML / IA

**Quantidade:** 1 (dedicação: 100%)
**Criticidade:** Alta — especialista no motor RAG e qualidade das respostas

#### Responsabilidades
- Implementar e otimizar o pipeline RAG (retrieval, reranking, generation)
- Gerenciar embeddings: escolha de modelo, geração, atualização
- Implementar e monitorar métricas de qualidade (RAGAS)
- Experimentar melhorias: chunking, prompting, reranking
- Implementar guardrails e filtros de saída
- Gerenciar custos de API de LLM

#### Skills Obrigatórias
- ✅ Python avançado com foco em ML/AI
- ✅ Experiência com embeddings e busca semântica
- ✅ LlamaIndex ou LangChain (mínimo 6 meses de uso)
- ✅ Prompt engineering avançado (few-shot, CoT, structured output)
- ✅ Experiência com APIs de LLM (OpenAI, Anthropic, Azure OpenAI)
- ✅ Noções de avaliação de modelos (métricas, benchmarks)

#### Skills Desejáveis
- 💡 RAGAS ou frameworks similares de avaliação RAG
- 💡 Fine-tuning de modelos (LoRA, QLoRA)
- 💡 Modelos de reranking (Cohere Rerank, cross-encoders)
- 💡 LiteLLM para abstração de providers
- 💡 Experiência com modelos open-source (Llama, Mistral via Ollama)

---

### PAPEL 4: Engenheiro de Backend Senior

**Quantidade:** 1 (dedicação: 100%)
**Criticidade:** Alta — constrói as APIs e infraestrutura de serviços

#### Responsabilidades
- Desenvolver APIs REST e GraphQL da plataforma
- Implementar autenticação, autorização e segurança (OAuth2, JWT)
- Construir o painel de administração (backend)
- Implementar sistema de multi-tenancy
- Gerenciar banco de dados relacional (schema, migrations, RLS)
- Implementar cache, rate limiting e otimizações de performance

#### Skills Obrigatórias
- ✅ Python com FastAPI ou Django REST Framework (produção)
- ✅ PostgreSQL avançado (índices, RLS, particionamento)
- ✅ Redis para cache e session management
- ✅ Autenticação: OAuth2, JWT, PKCE flow
- ✅ Docker + Docker Compose + Kubernetes básico
- ✅ CI/CD (GitHub Actions ou equivalente)
- ✅ Testes automatizados (pytest, mínimo 70% coverage)

#### Skills Desejáveis
- 💡 Azure SDK para serviços gerenciados
- 💡 Event-driven architecture (Service Bus, Kafka consumer)
- 💡 OpenTelemetry para observabilidade
- 💡 GraphQL (Strawberry ou Ariadne)

---

### PAPEL 5: Engenheiro de Frontend / UX

**Quantidade:** 1 (dedicação: 80%)
**Criticidade:** Média-Alta — a interface é o produto percebido pelo usuário final

#### Responsabilidades
- Desenvolver interface de chat conversacional (streaming de respostas)
- Desenvolver painel de administração (frontend)
- Implementar interface de exploração analítica com filtros e visualizações
- Garantir UX adequada: loading states, error handling, responsividade
- Integrar com APIs backend

#### Skills Obrigatórias
- ✅ React ou Next.js (produção, mínimo 2 anos)
- ✅ TypeScript
- ✅ Gerenciamento de estado (Zustand, Redux Toolkit ou TanStack Query)
- ✅ Streaming de respostas (SSE / WebSockets)
- ✅ Bibliotecas de UI componentes (Tailwind + shadcn/ui ou similar)
- ✅ Gráficos e visualizações (Recharts, Chart.js)

#### Skills Desejáveis
- 💡 Experiência com chat UIs (Chatbot components)
- 💡 Markdown rendering em tempo real (streaming)
- 💡 Acessibilidade (WCAG 2.1)

---

### PAPEL 6: Engenheiro de DevOps / Infra

**Quantidade:** 1 (dedicação: 60% — pode ser compartilhado)
**Criticidade:** Média — crítico para deploy e operação em produção

#### Responsabilidades
- Provisionar e gerenciar infraestrutura no Azure (AKS, Storage, PG, Redis)
- Configurar pipeline CI/CD completo
- Implementar monitoramento, alertas e dashboards (Grafana)
- Gerenciar segurança de infraestrutura (NSGs, Key Vault, RBAC)
- Planejar e executar estratégia de backup e disaster recovery

#### Skills Obrigatórias
- ✅ Azure (AKS, Service Bus, Blob Storage, PostgreSQL, Key Vault)
- ✅ Kubernetes (Helm, kubectl, troubleshooting)
- ✅ Terraform ou Bicep para IaC
- ✅ Docker e Docker Compose
- ✅ GitHub Actions ou Azure DevOps pipelines
- ✅ Grafana + Prometheus

#### Skills Desejáveis
- 💡 Azure Certification (AZ-104 ou AZ-400)
- 💡 Experiência com Istio ou service mesh
- 💡 FinOps — otimização de custos em cloud

---

### PAPEL 7: Product Manager / Scrum Master

**Quantidade:** 1 (dedicação: 80%)
**Criticidade:** Alta — sem PM o projeto perde direção e a comunicação com cliente falha

#### Responsabilidades
- Gerenciar backlog de produto e priorização com o cliente
- Facilitar cerimônias Agile (Sprint Planning, Review, Retrospectiva)
- Escrever e refinar User Stories com critérios de aceitação claros
- Gerenciar riscos e comunicar status ao cliente
- Garantir que o produto atende às necessidades das personas
- Coordenar demos e validações com stakeholders

#### Skills Obrigatórias
- ✅ Metodologias ágeis (Scrum ou Kanban — mínimo 2 anos)
- ✅ Escrita de User Stories e critérios de aceitação
- ✅ Ferramentas: Jira, Notion, Confluence ou equivalente
- ✅ Comunicação executiva (relatórios, apresentações)
- ✅ Gestão de riscos e comunicação de status

#### Skills Desejáveis
- 💡 Experiência com produtos de IA/ML (entende as nuances)
- 💡 Noções técnicas de APIs e bancos de dados
- 💡 Certificação PMP, PSM I ou CSPO

---

## 3. Resumo de Competências por Área

| Área | Papel | Nível Mínimo | Nível Ideal |
|------|-------|-------------|-------------|
| Liderança Técnica | Tech Lead / Arquiteto IA | Senior | Senior+ / Staff |
| Dados | Engenheiro de Dados | Pleno+ | Senior |
| IA/ML | Engenheiro de ML/IA | Pleno+ | Senior |
| Backend | Engenheiro Backend | Pleno | Senior |
| Frontend | Engenheiro Frontend/UX | Pleno | Pleno+ |
| Infra | DevOps/Infra | Pleno | Senior |
| Produto | Product Manager | Pleno | Senior |

---

## 4. Skills Transversais (Desejáveis para Todo o Time)

- Familiaridade com IA Generativa e LLMs (obrigatório mínimo básico)
- Inglês técnico para leitura de documentação
- Experiência com ambientes Cloud (Azure preferencial, dado parceria IAgentics)
- Cultura de qualidade: code review, testes, documentação
- Comunicação assíncrona clara (remote-friendly)

---

## 5. Estrutura Recomendada de Reporte

```
Product Manager (interface com cliente)
│
Tech Lead / Arquiteto IA (decisões técnicas)
├── Engenheiro de Dados Senior
├── Engenheiro de ML / IA
├── Engenheiro de Backend Senior
├── Engenheiro de Frontend
└── DevOps / Infra (pode ser externo/part-time)
```

