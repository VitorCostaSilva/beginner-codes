# Beginner SQL Codes – Clínica Médica

Este repositório contém exercícios e exemplos de SQL desenvolvidos para praticar **criação de tabelas**, **inserção de dados** e **consultas básicas**. Os exemplos são baseados em um cenário de **clínica médica**, com tabelas relacionadas a laboratórios, convênios, médicos, pacientes e consultas.

## 📂 Estrutura dos arquivos

### 1. `clinica_laboratorio.sql`
- Cria a tabela `laboratorio` com código e nome do laboratório.
- Insere 5 laboratórios de exemplo.
- **Função:** armazenar informações básicas sobre laboratórios parceiros da clínica.

### 2. `clinica_convenio.sql`
- Cria a tabela `convenio` com dados do convênio e vínculo com o laboratório (`cdLabo`).
- Insere três convênios (“Sul América”, “Unimed”, “Bradesco”).
- **Função:** vincular convênios de saúde aos laboratórios.

### 3. `clinica_medico.sql`
- Cria a tabela `medico` com código, nome, datas e especialização.
- Insere quatro médicos.
- **Função:** armazenar dados dos médicos da clínica.

### 4. `clinica_medico_convenio.sql`
- Cria a tabela de associação N:N entre médicos e convênios.
- Insere pares de relacionamento.
- **Função:** registrar quais médicos atendem por quais convênios.

### 5. `clinica_paciente.sql`
- Cria a tabela `paciente` com dados pessoais e referência ao plano de saúde.
- Insere quatro pacientes.
- **Função:** armazenar dados dos pacientes e vincular ao plano de saúde.

### 6. `clinica_plano_saude.sql`
- Cria a tabela `plano_saude` com código e descrição do plano.
- Insere três planos de saúde.
- **Função:** registrar os tipos de planos aceitos pela clínica.

### 7. `clinica_consulta.sql`
- Cria a tabela `consulta` com dados de consultas, incluindo médico, paciente, diagnóstico, medicação e valor.
- Insere 11 consultas de exemplo.
- **Função:** registrar todas as consultas realizadas na clínica.

### 8. `DB-lista4.txt`
- Contém consultas SQL práticas para manipulação dos dados das tabelas.
- Exemplos incluem `SELECT`, `INSERT`, `CREATE DATABASE`, filtros (`WHERE`) e concatenação de colunas.

## 📝 Observações
- Estes arquivos podem ser usados para **praticar SQL básico e intermediário**.
- Estrutura pensada para exercitar **chaves primárias, estrangeiras, relacionamentos N:N** e consultas simples.

