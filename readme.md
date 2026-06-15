# Trabalho 03 - Linux, Shell Script e Cloud Computing

## Aluno

Vinicius Vitório Rodrigues

## Curso

Sistemas de Informação - Unidavi

## Tema

Infraestrutura para Fórum Online de RPG - TavernBoard Cloud

---

# Descrição do Projeto

O projeto TavernBoard Cloud simula uma infraestrutura cloud para hospedagem de um fórum online de RPG.

O ambiente foi desenvolvido utilizando Docker, Ubuntu Server, Apache e Shell Script, automatizando tarefas operacionais comuns em ambientes Linux, como atualização do sistema, deploy de aplicações, backup, monitoramento, gerenciamento de processos, configuração de usuários e permissões, além da geração de relatórios operacionais.

O objetivo é demonstrar conhecimentos práticos relacionados à administração de ambientes Linux, automação operacional e conceitos de Cloud Computing.

---

# Tecnologias Utilizadas

* Ubuntu 22.04
* Docker
* Docker Compose
* Apache2
* Shell Script (Bash)
* Git
* GitHub
* DockerHub

---

# Estrutura do Projeto

```text
trabalho03-cloud-shell/
├── Dockerfile
├── docker-compose.yml
├── README.md
├── scripts/
│   ├── 01_update.sh
│   ├── 02_apache.sh
│   ├── 03_estrutura.sh
│   ├── 04_backup.sh
│   ├── 05_deploy.sh
│   ├── 06_processos.sh
│   ├── 07_monitoramento.sh
│   ├── 08_usuarios_permissoes.sh
│   ├── 09_relatorio.sh
│   └── menu.sh
├── source/
│   ├── index.html
│   ├── sobre.html
│   └── assets/
│       └── style.css
├── backups/
├── logs/
└── evidencias/
```

---

# Cenário Simulado

O TavernBoard representa uma aplicação web voltada para comunidades de RPG.

O ambiente possui áreas para:

* Campanhas
* Personagens
* Fórum
* Comentários
* Publicações

Toda a infraestrutura é preparada automaticamente por meio dos scripts desenvolvidos neste trabalho.

---

# Como Executar o Projeto

## Construir e iniciar o ambiente

```bash
docker compose up -d --build
```

## Verificar o container

```bash
docker ps
```

## Acessar o container

```bash
docker exec -it trabalho03-linux bash
```

---

# Como Acessar o Site

Após realizar o deploy:

```text
http://localhost:8080
```

---

# Scripts Disponíveis

## 01_update.sh

Atualiza os pacotes do sistema operacional.

```bash
./scripts/01_update.sh
```

---

## 02_apache.sh

Instala e valida o Apache.

```bash
./scripts/02_apache.sh
```

---

## 03_estrutura.sh

Cria a estrutura de diretórios do projeto.

```bash
./scripts/03_estrutura.sh
```

---

## 04_backup.sh

Realiza backup automatizado da estrutura do projeto.

```bash
./scripts/04_backup.sh
```

---

## 05_deploy.sh

Publica o site estático no Apache.

```bash
./scripts/05_deploy.sh
```

---

## 06_processos.sh

Gerencia processos do sistema.

Listar:

```bash
./scripts/06_processos.sh listar
```

Buscar:

```bash
./scripts/06_processos.sh buscar apache
```

Encerrar:

```bash
./scripts/06_processos.sh matar PID
```

---

## 07_monitoramento.sh

Monitora CPU, memória, disco e Apache.

```bash
./scripts/07_monitoramento.sh
```

---

## 08_usuarios_permissoes.sh

Cria usuários, grupos e configura permissões.

```bash
./scripts/08_usuarios_permissoes.sh
```

---

## 09_relatorio.sh

Gera relatório operacional.

```bash
./scripts/09_relatorio.sh
```

O relatório é salvo em:

```text
logs/relatorio_execucao.txt
```

---

## menu.sh

Menu principal para execução das rotinas.

```bash
./scripts/menu.sh
```

---

# Evidências

A pasta `evidencias/` contém:

* Container em execução
* Volume Docker configurado
* Scripts executados
* Atualização do sistema
* Instalação do Apache
* Estrutura criada
* Backup gerado
* Deploy realizado
* Site acessível pelo navegador
* Monitoramento do sistema
* Usuários e permissões
* Menu principal
* Relatório operacional

---

# DockerHub

Link da imagem:

```text
ADICIONAR_LINK_DOCKERHUB_AQUI
```

---

# GitHub

Link do repositório:

```text
ADICIONAR_LINK_GITHUB_AQUI
```

---

# Uso de Inteligência Artificial

Foi utilizada a ferramenta ChatGPT como apoio para revisão dos scripts, estruturação da documentação, auxílio na resolução de problemas e organização do ambiente.

Todo o código foi executado, validado e adaptado manualmente para atender aos requisitos do trabalho.

O uso da ferramenta contribuiu para o aprendizado dos comandos Linux, Shell Script, Docker e automação operacional.

---

# Principais Dificuldades Encontradas

As principais dificuldades encontradas durante o desenvolvimento foram:

* Configuração inicial do ambiente Docker;
* Permissões de execução dos scripts Shell;
* Integração entre Apache e Docker;
* Organização da estrutura do projeto;
* Validação dos processos automatizados.

O projeto permitiu aprofundar os conhecimentos em Linux, Shell Script, Docker e conceitos de Cloud Computing aplicados à automação operacional.

---

# Conclusão

O TavernBoard Cloud demonstrou a aplicação prática de conceitos de infraestrutura, automação e administração de ambientes Linux em um cenário relacionado à Cloud Computing.

A utilização de Docker, Apache e Shell Script permitiu automatizar tarefas operacionais importantes, aproximando o projeto de situações encontradas em ambientes reais de DevOps e infraestrutura.
