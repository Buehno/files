# Estimativa de Custo e Precificação
## Plataforma de Inteligência Baseada em GenAI — IAgentics

---

## 1. Premissas de Precificação

### 1.1 Tabela de Tarifas por Nível (Mercado BR — 2025)

| Nível | Faixa Salarial CLT/mês | Custo Total p/ Empresa (CLT) | Rate Projeto PJ/hora | Rate Projeto CLT/hora |
|-------|----------------------|----------------------------|---------------------|----------------------|
| Júnior | R$ 4.000 – R$ 6.000 | R$ 7.500 – R$ 10.800 | R$ 45 – R$ 70 | R$ 43 – R$ 62 |
| Pleno | R$ 7.000 – R$ 12.000 | R$ 12.600 – R$ 21.600 | R$ 80 – R$ 130 | R$ 72 – R$ 124 |
| Sênior | R$ 14.000 – R$ 22.000 | R$ 25.200 – R$ 39.600 | R$ 150 – R$ 250 | R$ 144 – R$ 227 |
| Staff/Principal | R$ 22.000 – R$ 35.000 | R$ 39.600 – R$ 63.000 | R$ 250 – R$ 400 | R$ 227 – R$ 361 |

> **Nota:** Custo CLT inclui encargos (~80%): FGTS, 13°, férias, INSS, benefícios médios. Rate projeto é o custo de alocação para projetos de clientes (não o preço cobrado).

### 1.2 Horas Úteis por Mês
- 22 dias úteis × 8 horas = **176 horas/mês úteis**
- Com overhead de gestão, reuniões e impedimentos: **~140–150 horas produtivas/mês por profissional**

### 1.3 Markup IAgentics sobre Custo de Hora

A IAgentics como empresa de consultoria/implementação aplica markup sobre o custo de hora para cobrir:
- Overhead administrativo (15%)
- Margem de lucro (25–40%)
- Risco de projeto (10%)
- **Markup total: 50–65% sobre custo base**

---

## 2. Custo de Projeto por Cenário

### 2.1 Cenário 1 — Time Júnior (68 semanas com buffer / ~17 meses)

| Papel | Nível | Horas Totais | Custo/h (custo empresa) | Custo Total |
|-------|-------|-------------|------------------------|-------------|
| Tech Lead (Sênior, 0.5 FTE) | Sênior | 1.190h | R$ 200 | R$ 238.000 |
| Eng. Dados | Júnior | 2.380h | R$ 55 | R$ 130.900 |
| Eng. ML/IA | Júnior | 2.380h | R$ 55 | R$ 130.900 |
| Eng. Backend | Júnior | 2.380h | R$ 55 | R$ 130.900 |
| Eng. Frontend | Júnior | 2.380h | R$ 55 | R$ 130.900 |
| DevOps (0.5 FTE) | Júnior | 1.190h | R$ 55 | R$ 65.450 |
| Product Manager | Pleno | 1.904h | R$ 100 | R$ 190.400 |
| **Subtotal Pessoas** | | | | **R$ 1.017.450** |
| Infraestrutura Azure (17 meses) | | | | R$ 85.000 |
| APIs LLM (estimativa) | | | | R$ 51.000 |
| Ferramentas e licenças | | | | R$ 25.500 |
| **CUSTO TOTAL DO PROJETO** | | | | **R$ 1.178.950** |

**⚠️ Observação:** Este cenário tem custo aparentemente mais baixo de pessoas, porém alto risco de retrabalho e prazo maior — o custo total pode superar os outros cenários se houver rework significativo.

---

### 2.2 Cenário 2 — Time Pleno (46 semanas com buffer / ~11.5 meses)

| Papel | Nível | Horas Totais | Custo/h | Custo Total |
|-------|-------|-------------|---------|-------------|
| Tech Lead | Pleno+ | 1.610h | R$ 110 | R$ 177.100 |
| Eng. Dados | Pleno | 1.610h | R$ 100 | R$ 161.000 |
| Eng. ML/IA | Pleno | 1.610h | R$ 100 | R$ 161.000 |
| Eng. Backend | Pleno | 1.610h | R$ 100 | R$ 161.000 |
| Eng. Frontend | Pleno | 1.610h | R$ 100 | R$ 161.000 |
| DevOps (0.7 FTE) | Pleno | 1.127h | R$ 100 | R$ 112.700 |
| Product Manager | Pleno | 1.288h | R$ 100 | R$ 128.800 |
| **Subtotal Pessoas** | | | | **R$ 1.062.600** |
| Infraestrutura Azure (11.5 meses) | | | | R$ 57.500 |
| APIs LLM (estimativa) | | | | R$ 34.500 |
| Ferramentas e licenças | | | | R$ 17.250 |
| **CUSTO TOTAL DO PROJETO** | | | | **R$ 1.171.850** |

---

### 2.3 Cenário 3 — Time Sênior (30 semanas com buffer / ~7.5 meses)

| Papel | Nível | Horas Totais | Custo/h | Custo Total |
|-------|-------|-------------|---------|-------------|
| Tech Lead / Staff | Senior/Staff | 1.050h | R$ 300 | R$ 315.000 |
| Eng. Dados | Sênior | 1.050h | R$ 200 | R$ 210.000 |
| Eng. ML/IA | Sênior | 1.050h | R$ 220 | R$ 231.000 |
| Eng. Backend | Sênior | 1.050h | R$ 200 | R$ 210.000 |
| Eng. Frontend | Sênior | 1.050h | R$ 190 | R$ 199.500 |
| DevOps (0.7 FTE) | Sênior | 735h | R$ 200 | R$ 147.000 |
| Product Manager | Sênior | 840h | R$ 200 | R$ 168.000 |
| **Subtotal Pessoas** | | | | **R$ 1.480.500** |
| Infraestrutura Azure (7.5 meses) | | | | R$ 37.500 |
| APIs LLM (estimativa) | | | | R$ 22.500 |
| Ferramentas e licenças | | | | R$ 11.250 |
| **CUSTO TOTAL DO PROJETO** | | | | **R$ 1.551.750** |

---

### 2.4 Cenário 4 — Mix de Senioridade — RECOMENDADO (37 semanas / ~9 meses)

| Papel | Nível | Horas Totais | Custo/h | Custo Total |
|-------|-------|-------------|---------|-------------|
| Tech Lead / Arquiteto IA | Sênior | 1.295h | R$ 280 | R$ 362.600 |
| Eng. Dados | Sênior | 1.295h | R$ 200 | R$ 259.000 |
| Eng. ML/IA | Sênior | 1.295h | R$ 220 | R$ 284.900 |
| Eng. Backend | Pleno | 1.295h | R$ 110 | R$ 142.450 |
| Eng. Frontend | Pleno | 1.295h | R$ 100 | R$ 129.500 |
| DevOps (0.7 FTE) | Pleno | 906h | R$ 110 | R$ 99.660 |
| Product Manager | Pleno | 1.036h | R$ 105 | R$ 108.780 |
| **Subtotal Pessoas** | | | | **R$ 1.386.890** |
| Infraestrutura Azure (9 meses) | | | | R$ 45.000 |
| APIs LLM (estimativa) | | | | R$ 27.000 |
| Ferramentas e licenças | | | | R$ 13.500 |
| **CUSTO TOTAL DO PROJETO** | | | | **R$ 1.472.390** |

---

## 3. Precificação ao Cliente (Valor Cobrado)

### 3.1 Componentes do Preço

| Componente | Descrição |
|-----------|-----------|
| **Custo base** | Horas × taxa de custo por profissional |
| **Overhead operacional** | 15% sobre custo base (admin, ferramentas, infra IAgentics) |
| **Margem de lucro** | 30-40% sobre custo base |
| **Risco de projeto** | 10% sobre custo base |
| **Total markup** | ~55-65% sobre custo base |

### 3.2 Precificação por Cenário

| Cenário | Custo Total Projeto | Markup | **Preço ao Cliente** | Margem Bruta |
|---------|-------------------|--------|---------------------|-------------|
| Júnior | R$ 1.178.950 | 55% | **R$ 1.827.370** | 35.5% |
| Pleno | R$ 1.171.850 | 58% | **R$ 1.851.520** | 36.7% |
| Sênior | R$ 1.551.750 | 60% | **R$ 2.482.800** | 37.5% |
| **Mix (Recomendado)** | **R$ 1.472.390** | **60%** | **R$ 2.355.820** | **37.5%** |

### 3.3 Formas de Apresentação ao Cliente

#### Opção A: Preço Fixo por Projeto
Recomendado quando o escopo é bem definido e o cliente quer previsibilidade.

| Cenário | Preço Total | Forma de Pagamento |
|---------|-------------|-------------------|
| Mix (Recomendado) | R$ 2.355.820 | 20% kick-off + 10% por milestone (8x) |

#### Opção B: Time & Material com Teto
Recomendado quando há incertezas de escopo. Cliente paga pelas horas realizadas, com teto contratual.

| Cenário Mix | Rate/hora cobrado | Horas estimadas | Teto contratual |
|-------------|-----------------|-----------------|-----------------|
| Mix Recomendado | R$ 260/h médio | 8.162h | R$ 2.590.000 |

#### Opção C: Retainer Mensal + Entregáveis
Para clientes que preferem relacionamento contínuo.

| Fase | Meses | Valor Mensal | Total da Fase |
|------|-------|-------------|---------------|
| Implementação (9 meses) | 9 | R$ 261.760 | R$ 2.355.840 |
| Sustentação pós-go-live | Por contrato | R$ 45.000–80.000/mês | Contrato separado |

---

## 4. Custos de Infraestrutura e Operação (Pós Go-Live)

### 4.1 Custo Mensal de Operação (Estimativa)

| Item | Custo Mensal (estimativa) |
|------|--------------------------|
| Azure AKS (3 nodes médios) | R$ 3.500 |
| Azure PostgreSQL (Flexible Server) | R$ 1.200 |
| Qdrant (2 instâncias + storage) | R$ 2.500 |
| Azure Blob Storage (1TB) | R$ 500 |
| Azure Service Bus | R$ 300 |
| Azure Redis Cache | R$ 600 |
| Monitoramento + CDN | R$ 800 |
| **Infraestrutura Total** | **R$ 9.400/mês** |
| APIs LLM (5.000 consultas/dia estimadas) | R$ 8.000–20.000/mês |
| APIs de busca web (Serper/Bing) | R$ 1.500/mês |
| **TOTAL OPERACIONAL ESTIMADO** | **R$ 19.000 – R$ 31.000/mês** |

> **Importante:** O custo de LLM é altamente variável e depende do volume de consultas e do modelo escolhido. Monitoramento e otimização de tokens são críticos para controle deste custo.

---

## 5. Análise de ROI para o Cliente

### 5.1 Benefícios Quantificáveis Típicos

| Benefício | Estimativa de Ganho/mês |
|-----------|------------------------|
| Redução de tempo de pesquisa de analistas (30 analistas × 2h/dia economia) | 1.320h/mês |
| Valor dessas horas (R$ 80/h analista) | R$ 105.600/mês |
| Redução de erros por informação desatualizada | R$ 20.000–50.000/mês |
| Aceleração de tomada de decisão (menos reuniões) | Difícil de quantificar |
| **ROI Estimado Mensal (conservador)** | **R$ 125.600/mês** |

### 5.2 Payback Estimado

| Cenário | Investimento | ROI Mensal (conservador) | Payback |
|---------|-------------|------------------------|---------|
| Mix Recomendado | R$ 2.355.820 + R$ 25.000/mês infra | R$ 125.600 | ~24 meses |
| Com ROI otimista (R$ 200k/mês) | R$ 2.355.820 | R$ 200.000 | ~14 meses |

---

## 6. Resumo Executivo de Precificação

| Cenário | Prazo | Preço ao Cliente | Risco |
|---------|-------|-----------------|-------|
| Júnior | 17 meses | R$ 1.827.370 | Muito Alto |
| Pleno | 11.5 meses | R$ 1.851.520 | Médio |
| Sênior | 7.5 meses | R$ 2.482.800 | Baixo |
| **Mix (RECOMENDADO)** | **9 meses** | **R$ 2.355.820** | **Médio-Baixo** |

### Recomendação IAgentics
O **Cenário Mix** oferece o melhor equilíbrio entre:
- ✅ Prazo competitivo (9 meses)
- ✅ Qualidade técnica garantida nos pontos críticos (3 seniores)
- ✅ Custo acessível ao cliente (vs. time totalmente sênior)
- ✅ Margem saudável para a IAgentics (~37%)
- ✅ Risco técnico controlável

**Estratégia de Negociação:** Apresentar o Mix como opção padrão. Oferecer desconto de 10-15% para pagamento antecipado ou contrato de sustentação já firmado no kick-off.

