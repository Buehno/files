# DPR e ADR do Projeto
## Plataforma de Inteligência Baseada em GenAI — IAgentics

---

# PARTE 1 — DPR (Design and Product Requirements)

## 1.1 Visão do Produto

**Nome do Produto:** GenAI Intelligence Platform (GIP)
**Versão:** 1.0
**Data:** Junho 2025
**Elaborado por:** IAgentics

### Declaração de Visão

> Construir uma plataforma moderna de inteligência baseada em IA Generativa que transforma grandes volumes de dados heterogêneos em conhecimento acionável, entregue por meio de interfaces conversacionais, APIs inteligentes e ferramentas analíticas — com atualização contínua e busca semântica de alta precisão.

---

## 1.2 Objetivos e Critérios de Sucesso (OKRs)

| Objetivo | KR (Key Result) | Meta |
|---------|----------------|------|
| Ingestão de dados confiável | % de documentos processados com sucesso | ≥ 95% |
| Qualidade das respostas RAG | RAGAS Faithfulness Score | ≥ 0.80 |
| Qualidade das respostas RAG | RAGAS Answer Relevance Score | ≥ 0.75 |
| Performance do sistema | Latência P95 de resposta ao usuário | ≤ 8 segundos |
| Adoção | Usuários ativos mensais no 3º mês | ≥ 70% do target |
| Disponibilidade | Uptime da plataforma | ≥ 99.5% |
| Atualização de conteúdo | Ciclo de atualização da base (web ingestion) | ≤ 24 horas |

---

## 1.3 Personas e Casos de Uso

### Persona 1: Analista de Negócios
- **Necessidade:** Consultar rapidamente insights de múltiplas fontes sem abrir dezenas de documentos
- **Caso de Uso Principal:** Digitar uma pergunta em linguagem natural e receber resposta com citação de fontes
- **Critério de Aceitação:** Resposta em < 8s, com ≥ 2 fontes citadas, sem informação factualmente incorreta

### Persona 2: Gestor / Tomador de Decisão
- **Necessidade:** Resumos executivos e simulações baseadas em dados atualizados
- **Caso de Uso Principal:** Solicitar "Resumo das últimas notícias sobre [tema]" ou "Compare [A] com [B]"
- **Critério de Aceitação:** Resumo coerente, atualizado (< 24h), exportável em PDF

### Persona 3: Desenvolvedor / Integrador
- **Necessidade:** Consumir a inteligência da plataforma via API em aplicações externas
- **Caso de Uso Principal:** Chamar endpoint REST com query e receber resposta estruturada com metadados
- **Critério de Aceitação:** API documentada (OpenAPI), SLA de 99.5%, autenticação OAuth2/API Key

### Persona 4: Administrador da Plataforma
- **Necessidade:** Gerenciar fontes de dados, usuários, monitorar saúde do sistema
- **Caso de Uso Principal:** Painel de administração para configurar pipelines, ver logs, gerenciar acessos
- **Critério de Aceitação:** Interface web, monitoramento em tempo real, alertas configuráveis

---

## 1.4 Requisitos Funcionais

### RF-01: Pipeline de Ingestão de Dados
| ID | Requisito | Prioridade | Critério de Aceitação |
|----|-----------|-----------|----------------------|
| RF-01.1 | Suportar ingestão de PDF, DOCX, XLSX, CSV, TXT, HTML | MUST | 100% dos formatos ingeridos sem erro |
| RF-01.2 | Suportar conexão com bancos de dados SQL (PostgreSQL, MySQL) | MUST | Query configurável, incremental via timestamp |
| RF-01.3 | Suportar ingestão de APIs REST externas | SHOULD | Configuração de endpoint, auth, schedule |
| RF-01.4 | Processamento assíncrono com fila de mensagens | MUST | Nenhuma ingestão bloqueia interface do usuário |
| RF-01.5 | Reprocessamento de documentos com falha | MUST | Retry automático com backoff exponencial |
| RF-01.6 | Rastreabilidade de proveniência de cada chunk | MUST | Cada chunk possui: fonte, data, ID do documento |

### RF-02: Processamento Semântico
| ID | Requisito | Prioridade | Critério de Aceitação |
|----|-----------|-----------|----------------------|
| RF-02.1 | Geração de embeddings configurável (modelo parametrizável) | MUST | Suporte a ≥ 2 provedores de embedding |
| RF-02.2 | Chunking configurável (tamanho, overlap, estratégia) | MUST | Parâmetros configuráveis via painel admin |
| RF-02.3 | Extração de metadados estruturados (data, autor, tipo) | SHOULD | Metadados disponíveis para filtragem |
| RF-02.4 | Suporte a busca híbrida (vetorial + keyword) | SHOULD | Melhoria mensurável de recall vs. só vetorial |
| RF-02.5 | Categorização automática de documentos | COULD | Taxonomia configurável pelo admin |

### RF-03: Motor RAG
| ID | Requisito | Prioridade | Critério de Aceitação |
|----|-----------|-----------|----------------------|
| RF-03.1 | Recuperação de chunks relevantes por similaridade semântica | MUST | Top-K configurável, threshold de similaridade |
| RF-03.2 | Reranking de resultados de recuperação | SHOULD | Score de relevância disponível |
| RF-03.3 | Gestão de histórico de conversa (session memory) | MUST | Contexto das últimas N mensagens incluído |
| RF-03.4 | Citação de fontes nas respostas | MUST | Toda resposta inclui referência ao documento fonte |
| RF-03.5 | Detecção de perguntas fora do escopo da base | SHOULD | Resposta clara quando dado não está na base |
| RF-03.6 | Suporte a múltiplos modelos LLM (configurável) | SHOULD | Abstração de provider |

### RF-04: Web Ingestion (Batch)
| ID | Requisito | Prioridade | Critério de Aceitação |
|----|-----------|-----------|----------------------|
| RF-04.1 | Integração com API de busca web | MUST | ≥ 1 provider integrado (ex: Serper, Bing) |
| RF-04.2 | Agendamento configurável de buscas | MUST | Cron configurável via painel |
| RF-04.3 | Filtragem de conteúdo irrelevante | SHOULD | Score de relevância + threshold |
| RF-04.4 | Deduplicação de conteúdo web vs. base existente | MUST | Hash de conteúdo ou similaridade semântica |

### RF-05: Interfaces
| ID | Requisito | Prioridade | Critério de Aceitação |
|----|-----------|-----------|----------------------|
| RF-05.1 | Interface de chat conversacional web | MUST | Responsivo, streaming de resposta, histórico |
| RF-05.2 | API REST documentada com OpenAPI | MUST | Swagger disponível, exemplos de requisição |
| RF-05.3 | Painel de administração web | MUST | Gestão de fontes, usuários, monitoramento |
| RF-05.4 | Interface de exploração analítica | SHOULD | Filtros, visualizações básicas de uso |
| RF-05.5 | Exportação de respostas (PDF, DOCX) | COULD | Disponível via botão na interface de chat |

---

## 1.5 Requisitos Não-Funcionais

### RNF-01: Performance
- Latência P95 de resposta RAG: ≤ 8 segundos
- Latência P50 de resposta RAG: ≤ 4 segundos
- Throughput: ≥ 50 consultas simultâneas por instância
- Ingestão: ≥ 1.000 documentos/hora (com paralelismo)

### RNF-02: Escalabilidade
- Arquitetura stateless para componentes de query (escala horizontal)
- Banco vetorial deve suportar 10M+ vetores sem degradação significativa
- Filas de ingestão devem ser tolerantes a pico de demanda

### RNF-03: Segurança e LGPD
- Autenticação e autorização (OAuth2 / JWT)
- Criptografia em trânsito (TLS 1.2+) e em repouso
- Segregação de dados por tenant
- Registro de auditoria de todas as consultas (audit log)
- Direito ao esquecimento: capacidade de excluir dados de um usuário da base
- Mapeamento de dados pessoais (ROPA - Record of Processing Activities)

### RNF-04: Observabilidade
- Logs estruturados (JSON) com correlação por request ID
- Métricas de infraestrutura e aplicação expostas para Prometheus/Grafana
- Tracing distribuído (OpenTelemetry)
- Alertas configuráveis para: taxa de erro, latência, custo de API

### RNF-05: Manutenibilidade
- Cobertura de testes: ≥ 70% no código de negócio crítico
- Documentação técnica atualizada (README, ADRs, diagramas C4)
- Containerização Docker de todos os serviços
- Pipeline CI/CD automatizado

---

# PARTE 2 — ADR (Architecture Decision Records)

---

## ADR-001: Escolha do Framework de Orquestração LLM

**Status:** Aceito
**Data:** Junho 2025
**Decisores:** Time Técnico IAgentics

### Contexto
Precisamos de um framework para orquestrar o pipeline RAG, gerenciar prompts, integrar com diferentes LLMs e bancos vetoriais. As principais opções são LangChain, LlamaIndex e implementação customizada.

### Opções Consideradas
| Opção | Prós | Contras |
|-------|------|---------|
| **LangChain** | Ecossistema amplo, muitos integradores, comunidade ativa | Abstração excessiva, mudanças frequentes de API, overhead |
| **LlamaIndex** | Foco em RAG/dados, pipelines mais limpos, melhor para documents | Menos integradores, comunidade menor |
| **Custom** | Controle total, sem dependência de terceiros | Custo de desenvolvimento alto, reinventar a roda |

### Decisão
**LlamaIndex** para o pipeline RAG core, com componentes pontuais do LangChain para integrações específicas onde não há alternativa nativa.

### Justificativa
LlamaIndex é mais especializado em RAG sobre documentos, oferece abstrações mais limpas para o caso de uso principal, e sua arquitetura de pipelines é mais previsível para manutenção.

### Consequências
- (+) Pipeline RAG bem estruturado e manutenível
- (+) Boas abstrações para chunking, retrieval e reranking
- (-) Equipe precisará de treinamento específico em LlamaIndex
- (-) Algumas integrações podem exigir LangChain como complemento

---

## ADR-002: Escolha do Banco Vetorial

**Status:** Aceito
**Data:** Junho 2025

### Contexto
O banco vetorial é o componente central de armazenamento e busca de embeddings. Deve suportar escala, filtragem por metadados, atualizações incrementais e ser operacionalmente viável para o cliente.

### Opções Consideradas
| Opção | Tipo | Prós | Contras |
|-------|------|------|---------|
| **Pinecone** | Managed SaaS | Zero ops, escala automática, boa performance | Vendor lock-in, custo alto em escala |
| **Qdrant** | Self-hosted / Cloud | Open source, bom performance, filtragem rica | Exige operação |
| **Weaviate** | Self-hosted / Cloud | GraphQL, módulos de NLP integrados, multimodal | Mais complexo de operar |
| **pgvector** | Extensão PostgreSQL | Sem nova infra, SQL familiar | Performance limitada em > 1M vetores |
| **Chroma** | Self-hosted | Simples, bom para PoC | Não recomendado para produção em grande escala |

### Decisão
**Qdrant** como banco vetorial principal, com **pgvector** como opção para clientes com volume menor (< 500K vetores) que já possuem PostgreSQL.

### Justificativa
Qdrant oferece o melhor equilíbrio entre performance, filtragem por payload (metadados), operação via Docker/Kubernetes, e ausência de vendor lock-in. Possui suporte a quantização de vetores para redução de custo de armazenamento.

### Consequências
- (+) Sem vendor lock-in, custo operacional controlável
- (+) Filtragem rica por metadados (essencial para multi-tenant)
- (-) Requer operação e monitoramento do serviço
- (-) Time precisa aprender administração do Qdrant

---

## ADR-003: Estratégia de LLM e Abstração de Provider

**Status:** Aceito
**Data:** Junho 2025

### Contexto
O projeto depende de LLMs externos (OpenAI, Anthropic, etc.) para geração de respostas. Precisamos definir como lidar com a dependência de providers, custos e fallbacks.

### Decisão
Utilizar **LiteLLM** como camada de abstração de provider de LLM, com **Claude 3.5 Sonnet (Anthropic)** como provider primário e **GPT-4o (OpenAI)** como fallback.

### Justificativa
- LiteLLM unifica a interface para 100+ modelos com uma única API compatível com OpenAI
- Claude Sonnet oferece excelente custo-benefício para tarefas RAG (contexto longo, precisão alta)
- Abstração permite trocar de provider sem refatoração, essencial para gestão de custos
- IAgentics é parceiro Anthropic, o que garante acesso prioritário e suporte

### Consequências
- (+) Flexibilidade de provider, sem lock-in
- (+) Monitoramento de custo por modelo via LiteLLM proxy
- (+) Possibilidade de usar modelos locais (Ollama) para dados sensíveis
- (-) Camada adicional de overhead e complexidade operacional

---

## ADR-004: Estratégia de Chunking de Documentos

**Status:** Aceito
**Data:** Junho 2025

### Contexto
A estratégia de divisão de documentos em chunks afeta diretamente a qualidade do RAG. Existem múltiplas abordagens com trade-offs diferentes.

### Opções Consideradas
| Estratégia | Descrição | Prós | Contras |
|-----------|-----------|------|---------|
| Fixed-size | Chunks de N tokens fixos | Simples, previsível | Quebra contexto semântico |
| Sentence splitter | Divide por sentenças | Preserva sentenças | Chunks muito curtos |
| **Semantic chunking** | Divide por similaridade semântica | Melhor contexto | Custo computacional maior |
| Hierarchical | Chunks + summaries de seções | Ótimo para docs longos | Complexidade de implementação |

### Decisão
**Estratégia híbrida:**
- Documentos curtos (< 5 páginas): Sentence splitter com overlap de 20%
- Documentos longos (> 5 páginas): Semantic chunking com hierarchical index (summary + chunks)
- Dados estruturados (tabelas, CSV): Chunking por linha/registro com contexto de cabeçalho

### Consequências
- (+) Melhor qualidade de recuperação para diferentes tipos de documento
- (+) Configurável e ajustável por tipo de fonte
- (-) Maior complexidade de implementação
- (-) Requer tuning e avaliação com dados reais do cliente

---

## ADR-005: Arquitetura de Deployment (Cloud e Containerização)

**Status:** Aceito
**Data:** Junho 2025

### Decisão
Deploy em **Microsoft Azure** (alinhado com parceria IAgentics-Microsoft) usando **Azure Kubernetes Service (AKS)** para orquestração de containers, com pipeline CI/CD via **GitHub Actions**.

### Componentes de Infraestrutura

| Componente | Serviço Azure | Justificativa |
|-----------|--------------|---------------|
| Orquestração | AKS | Escala automática, gerenciamento de containers |
| Fila de Mensagens | Azure Service Bus | Confiável, integrado ao ecossistema Azure |
| Armazenamento de Documentos | Azure Blob Storage | Custo-eficiente, integração nativa |
| Banco Vetorial | Qdrant em AKS | Self-hosted para controle e custo |
| Banco Relacional | Azure Database for PostgreSQL | Metadados, usuários, configurações |
| Cache | Azure Cache for Redis | Session data, cache de respostas frequentes |
| Monitoramento | Azure Monitor + Grafana | Logs, métricas, alertas |
| Secrets | Azure Key Vault | Chaves de API, credenciais |

### Justificativa
A parceria IAgentics-Microsoft (AI Cloud Partner + Oracle for Startups) viabiliza créditos e suporte técnico prioritário. Azure oferece serviços maduros para todos os componentes necessários.

---

## ADR-006: Estratégia de Multi-tenancy

**Status:** Aceito
**Data:** Junho 2025

### Decisão
**Isolamento por namespace no banco vetorial + Row-Level Security no banco relacional.**

Cada tenant recebe:
- Namespace/collection dedicado no Qdrant
- Schema dedicado no PostgreSQL com RLS
- Prefix isolado no Azure Blob Storage
- JWT com claims de tenant validados em cada request

### Justificativa
Esta abordagem é o melhor equilíbrio entre isolamento de dados (necessário para LGPD), custo operacional (sem necessidade de instâncias separadas por tenant) e complexidade de implementação.

---

## ADR-007: Framework de Avaliação de Qualidade RAG

**Status:** Aceito
**Data:** Junho 2025

### Decisão
Utilizar **RAGAS** (Retrieval-Augmented Generation Assessment) como framework de avaliação, integrado ao pipeline de CI/CD.

### Métricas Monitoradas

| Métrica | Descrição | Threshold Mínimo |
|---------|-----------|-----------------|
| Faithfulness | Respostas fundamentadas nos documentos recuperados | ≥ 0.80 |
| Answer Relevance | Resposta endereça a pergunta feita | ≥ 0.75 |
| Context Precision | Chunks recuperados são relevantes | ≥ 0.70 |
| Context Recall | Informação necessária foi recuperada | ≥ 0.70 |

### Consequências
- (+) Qualidade do RAG mensurável e auditável
- (+) Regressões detectadas automaticamente no CI/CD
- (-) Requer curadoria de dataset de avaliação (golden questions)
- (-) Custo adicional de API para avaliação contínua

