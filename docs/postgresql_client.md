## **Role [postgresql_client]**

**OBS:** Serão abordados somente os arquivos mais relevantes da função.


#### Diretório [tasks]

Armazena as variáveis e os parametros para instalação e configuração do PostgreSQL 9.6 Client.

```bash
.
├── tasks
│   ├── main.yml
│   ├── packs.yml
│   └── repos.yml
```

Agrupa as tarefas a serem executadas. 

- [main.yml](roles/postgresql_client/main.yml)

Configura os repositórios PostgreSQL.

- [repos.yml](roles/postgresql_client/repos.yml)

Instalação dos pacotes para o cliente PostgreSQL.

- [packs.yml](roles/postgresql_client/packs.yml)