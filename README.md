
# CNAB Parser

A aplicação CNAB Parser foi implementada com o intuito de realizar o recebimento e normalização de dados através de um arquivo texto que contém dados em um formato padrão CNAB. A aplicação roda com [Docker](#Instalação), feita em Ruby on Rails versão 6. Se o usuário fizer o upload do arquivo que contém corretamente os dados, a aplicação retornará uma mensagem de sucesso. Caso o arquivo esteja incorreto, não parseará e retornará mensagem de erro.

## Status do Projeto
Finalizado.... 🛠️
## Stack utilizada

**Front-end e Back-end:** Rails 6.1.6 Ruby 3.0.2, Javascript, HTML5 e CSS.

**Testes:** RSpec-rails

**Banco de Dados** Postgresql

**Gems** RSpec, Rubocop, Simplecov, pry, Faker, shoulda-matchers, webpacker, devise, pg
## Funcionalidades

- Tela de Login.
- Endpoint para o envio do arquivo texto.
- Tela de visualização dos dados parseados.
- Tela de visualização dos dados parseados ordenados por proprietário e visualização do Saldo resultante.


## Instalação

#### DOCKER
Com o docker instalado na máquina, rode o comando abaixo no diretório da aplicação para a instalação do container.
```bash
  docker-compose up --build
```
**_Se o postgresql estiver em uso na máquina na portão padrão_** será necessário pará-lo ou alterar a porta. Para parar rode no terminal:
```bash
  systemctl stop postgresql
```
### Páginas
#### Página de login

```http
  http://localhost:3000
```

#### Página de Upload do arquivo

```http
  http://localhost:3000/transactions/import/new
```

### Página de Visualização dos dados

```http
  http://localhost:3000/transactions
```
#### Página de Visualização dos dados ordenados com saldo

```http
  http://localhost:3000/transactions/import/list
```

