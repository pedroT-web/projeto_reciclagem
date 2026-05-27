# 🌱 EcoSync

## 📌 Sobre o Projeto
O **EcoSync** é um sistema desenvolvido para otimizar o controle e a gestão de materiais recicláveis dentro de empresas e instituições.

A plataforma surgiu a partir da necessidade de substituir processos manuais e descentralizados por uma solução digital simples, intuitiva e eficiente, permitindo maior organização e acompanhamento das pesagens de materiais recicláveis.

O sistema foi pensado para atender empresas que desejam fortalecer suas práticas sustentáveis, melhorar o controle interno de reciclagem e gerar dados estratégicos para relatórios ambientais.

<hr>

# 🎯 Objetivo
Facilitar o registro, monitoramento e gerenciamento de materiais recicláveis, oferecendo uma solução prática para empresas que buscam maior controle sobre suas ações sustentáveis.

<hr>

# 🌎 Propósito
Contribuir para práticas corporativas mais sustentáveis através da digitalização do processo de controle de materiais recicláveis, promovendo:

- Organização operacional
- Redução de erros manuais
- Agilidade no registro das informações
- Incentivo à sustentabilidade empresarial

<hr>

# 💡 Proposta
A proposta do **EcoSync** é transformar processos manuais de controle reciclável em uma solução digital moderna e acessível.

O sistema permite:

- Registro rápido de pesagens
- Controle de materiais recicláveis
- Histórico completo de movimentações
- Exportação de relatórios
- Gestão de funcionários responsáveis pelos registros

Tudo isso através de uma interface simples, intuitiva e responsiva.

<hr>

# 🖥️ Funcionalidades

- ♻️ Registro de pesagens de materiais recicláveis
- 📊 Histórico completo de registros
- 📅 Filtros por período
- 📁 Exportação de relatórios em Excel/xls
- 👤 Controle de funcionários responsáveis pelos registros
- 🧱 Cadastro de materiais recicláveis
- 🔐 Área administrativa com autenticação
- 📈 Organização de dados sustentáveis
- 💾 CRUD completo no banco de dados
- ⚡ Interface simples, minimamente responsiva e intuitiva

<hr>

# 📄 Páginas do Sistema

## 🏠 Página Inicial
- Apresentação do sistema
- Navegação entre páginas
- Interface simples e prática

<br>

## ⚖️ Página de Pesagem
- Registro diário de pesagens
- Seleção de funcionários e materiais
- Histórico rápido das últimas pesagens
- Campos intuitivos para preenchimento

<br>

## 📚 Página de Histórico
- Visualização completa dos registros
- Filtros personalizados
- Geração de relatórios em Excel
- Gerenciamento de materiais e funcionários

<br>

## 🔑 Página de Login
- Acesso administrativo
- Controle de autenticação
- Proteção das informações do sistema

<br>
<hr>

## 📁 Estrutura do Projeto

```
Projeto_ReciclaSenac/
├── 🔧 .env                        # Variáveis de ambiente Para a integração do banco de dados (configuração local)
├── 📋 .env-exemplo                # Template de exemplo da configuração local
├── 🚫 .gitignore                  # Arquivos para ser ignorados pelo Git no commit
├── 📜 LICENSE                     # Licença do projeto
├── 📖 README.md                   # Documentação do projeto
├── 🖊 cadastrar-funcionario.php    # Cadastro de novos Funcionários. 
├── 🖊 cadastrar-material.php       # Cadastro de novos Materiais.
├── 🖊 cadastrar-Pesagem.php        # Realizar o registro da pesagem no banco de dados.
├── 🔌 config.php                  # Configuração do banco de dados para a integração do banco de dados.
├── ❌ deletar-Registro.php        # Realizar a exclusão do registro.
├── 📩 gerar-excel.php             # Realizar a exportação dos dados para um arquivo em xls.
├── 📖 historico.php               # Exibir os registros de pesagens do banco. 
├── 🏠 index.php                   # Página inicial/apresentação.
├── 🔑login.php                    # Validar administrador, Acesso a página de histórico.
├── 🏋️‍♀️ Pesagem.php                 # Registro de pesagens, historico de pesagens diárias.
├── 🔎 verificarAdmin.php          # Auxiliar o login do administrador, validação com banco de dados.
├── 📦 class/                      # Classes PHP (em desenvolvimento)
│   ├── Administrador.php          #  Classe de validação de login do administrador.
│   ├── Funcionario.php            #  Classe de Manipulação da tabela de funcionário no banco de dados.  
│   ├── Material.php               # Classe de Manipulação da tabela de materiais do banco de dados.    
│   └── Peso.php                   # Classe de Manipulação da tabela de cadastro de pesos do banco de dados.    
├── 🎨 css/                        # Arquivos de estilo.
│   ├── bootstrap.min.css          # Framework CSS Bootstrap.
│   ├── bootstrap-grid.min         # Framework de CSS para Colunas do Bootstrap.
│   └── style.css                  # Estilos personalizados.
├── 🔤 fonts/                      # Fontes tipográficas.
│   └── Nunito-VariabelFont        # Modelo de fonte Nunito. 
├── 🖼️ img/                        # Imagens do sistema.
│   └── logo_senac.png             # Ícone principal do sistema.
├── ⚡ js/                         # Scripts JavaScript.
├── 🗄️ sql/                        # Scripts de banco de dados.
│   ├── comandosBanco.sql          # Script de criação de tabela, e inserção de dados .genéricos.
│   └── selectPrincipal.sql        # Estrutura do Select Principal do projeto.
└── 🧩 template/                   # Templates e componentes.
    ├── footer.php                 # Rodapé comum das páginas.
    ├── header.php                 # Cabeçalho comum das páginas.
    ├── header-historico.php       # Cabeçalho para a página de histórico.
    └──  modal-*.php               # Modais de cadastro (Funcionário, Material, redefinição de senha, novo Usuário.).
    
```

<br>
<hr>

# 🗄️ Estrutura do Banco de Dados

## Tabelas Principais

### `tb_funcionarios`
Tabela responsável pelos funcionários cadastrados no sistema.

### `tb_materiais`
Tabela responsável pelos materiais recicláveis cadastrados.

### `cadastro_de_peso`
Tabela responsável pelos registros de pesagens.

### `tb_administrador`
Tabela responsável pelo controle administrativo e autenticação.

<br>
<hr>

# 🛠️ Tecnologias Utilizadas

## Backend
- PHP

## Frontend
- HTML5
- CSS3
- Bootstrap
- Bootstrap Icons
- JavaScript

## Banco de Dados
- MariaDB

## Ambiente Local
- XAMPP

<hr>

# ✅ Validações do Sistema

# Cadastro de Pesagem

## Funcionário
- Campo obrigatório

## Material
- Campo obrigatório

## Peso
- Campo obrigatório
- Apenas números
- Até duas casas decimais

## Tipo de Peso
- Campo obrigatório

## Data
- Não pode ser maior que a data atual
- Campo obrigatório

<hr>

# 🔐 Login

## Email
- Campo obrigatório
- Deve conter `@` e `.`
- Máximo de 100 caracteres

## Senha
- Campo obrigatório
- Mínimo de 8 caracteres
- Deve conter:
  - 1 letra maiúscula
  - 1 número
  - 1 caractere especial

<hr>

# 👤 Cadastro de Funcionário
- Campo obrigatório
- Entre 5 e 80 caracteres
- Não pode conter números
- Não pode conter caracteres especiais

<hr>

# ♻️ Cadastro de Material
- Campo obrigatório
- Entre 5 e 20 caracteres
- Não pode conter números
- Não pode conter caracteres especiais

<hr>

# 🚀 Diferenciais do EcoSync

- Sistema adaptável para diferentes ambientes
- Foco em sustentabilidade interna
- Organização inteligente de dados recicláveis
- Fácil implementação
- Interface simples e intuitiva
- Possibilidade de expansão futura

<hr>

# 🌱 Sustentabilidade e Impacto

O **EcoSync** auxilia com uma cultura mais sustentável através da organização de dados ambientais, incentivando práticas conscientes e facilitando o acompanhamento dos resultados gerados pela reciclagem.

