# CodeFactory Solutions — Projeto DevOps

## Descrição do projeto

Este projeto foi desenvolvido como atividade prática das disciplinas de DevOps e Integração Contínua. Ele simula uma consultoria para a empresa fictícia CodeFactory Solutions, que precisava melhorar a organização do desenvolvimento, a colaboração entre os integrantes e a confiabilidade das entregas.

A solução utiliza Git e GitHub para versionamento e colaboração, Docker para padronização do ambiente de execução e GitHub Actions para automatizar uma verificação básica do projeto.

## Objetivo

Demonstrar, na prática, como a Cultura DevOps pode melhorar o fluxo de desenvolvimento de software por meio de versionamento, branches, Pull Requests, revisão colaborativa, documentação, containers e Integração Contínua.

## Tecnologias utilizadas

- Git e GitHub — versionamento e colaboração;
- HTML, CSS e JavaScript — desenvolvimento da página web;
- Docker — containerização da aplicação;
- Nginx — servidor web utilizado dentro do container;
- GitHub Actions — pipeline de Integração Contínua;
- Markdown e GitHub Wiki — documentação do projeto.

## Estrutura de pastas

```text
CodeFactory-Solutions/
├── .github/
│   └── workflows/
│       └── ci.yml              # Pipeline de Integração Contínua
├── docs/
│   └── conflito.txt            # Registro da demonstração de conflito
├── src/
│   └── index.htm               # Página web da aplicação
├── Dockerfile                  # Configuração da imagem Docker
├── LICENSE                     # Licença MIT
└── README.md                   # Documentação principal
```

## Como instalar

### Pré-requisitos

Para executar o projeto localmente, é necessário ter o Git e o Docker instalados no computador.

### Clonar o repositório

```bash
git clone https://github.com/izabelaxavier/CodeFactory-Solutions.git
cd CodeFactory-Solutions
```

## Como executar com Docker

O Dockerfile utiliza a imagem do Nginx e copia o conteúdo da pasta `src` para o diretório público do servidor web dentro do container.

### 1. Criar a imagem Docker

Execute, na pasta principal do projeto:

```bash
docker build -t codefactory-site .
```

### 2. Criar e iniciar o container

```bash
docker run -d --name codefactory-container -p 8080:80 codefactory-site
```

### 3. Acessar a aplicação

Abra o navegador em <http://localhost:8080>.

### 4. Verificar o container

```bash
docker ps
```

### 5. Parar e remover o container

```bash
docker stop codefactory-container
docker rm codefactory-container
```

## Por que utilizar Docker neste projeto?

O Docker permite empacotar a aplicação e o servidor web em um ambiente padronizado. Assim, os integrantes da equipe podem executar o projeto com a mesma configuração, reduzindo problemas causados por diferenças entre computadores.

Essa prática também facilita a entrada de novos colaboradores, pois eles não precisam configurar manualmente todos os componentes do ambiente. Basta clonar o repositório, construir a imagem e iniciar o container.

## Estratégia de branches

- `main` — versão principal e integrada do projeto;
- `desenvolvimento` — branch destinada à integração das alterações;
- `feature/docker` — branch utilizada para desenvolver a configuração do Docker;
- `conflito-izabela` — branch criada para demonstrar uma alteração colaborativa;
- `conflito-joao` — branch criada para demonstrar a resolução de conflito.

As alterações devem ser desenvolvidas em branches separadas e integradas por meio de Pull Requests.

## Processo de colaboração

1. Criar ou selecionar uma Issue para a tarefa.
2. Criar uma branch para desenvolver a alteração.
3. Fazer commits com mensagens claras.
4. Enviar a branch para o GitHub.
5. Abrir um Pull Request.
6. Solicitar a revisão do colega.
7. Resolver possíveis conflitos.
8. Fazer o merge após a revisão e a aprovação.

## Padrão de commits

- `feat:` — criação de funcionalidade;
- `fix:` — correção de problema;
- `docs:` — alteração na documentação;
- `chore:` — tarefa de manutenção ou configuração.

## Integração Contínua

O workflow localizado em `.github/workflows/ci.yml` é executado em eventos de `push` e Pull Request. A pipeline verifica os arquivos do repositório e executa uma etapa de teste automatizado.

Esse processo ajuda a identificar problemas antes que as alterações sejam integradas ao projeto principal.

## Recursos utilizados no GitHub

Foram utilizados Issues, Labels, Projects, Wiki, Pull Requests, Actions e Insights para organizar as tarefas, documentar o projeto, revisar alterações e acompanhar o histórico do repositório.

## Licença

Este projeto está licenciado sob a licença MIT. Consulte o arquivo [LICENSE](LICENSE) para obter o texto completo da licença.

## Versão inicial

Versão `v1.0.0` — estrutura inicial do projeto, documentação, configuração de Docker e pipeline de Integração Contínua.

## Autores

Izabela Xavier e João Gabriel.
