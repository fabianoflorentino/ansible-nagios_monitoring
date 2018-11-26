## **Role [main_mk]**

```bash
├── handlers
│   └── main.yml
├── tasks
│   └── main.yml
├── templates
│   ├── main.mk_mssql.j2
│   ├── main.mk_multi.j2
│   ├── main.mk_oracle.j2
│   └── main.mk_postgresql.j2
```


#### Diretório [handlers]

Recebe notificação de recarregar/reiniciar programas.

```bash
├── handlers
│   └── main.yml
```

 - [main.yml](roles/main_mk/handlers/main.yml)


#### Diretório [tasks]

Armazena as variáveis e os parametros para instalação e configuração do main.mk drive.

```bash
├── tasks
│   └── main.yml
```

 - [main.yml](roles/main_mk/tasks/main.yml)


#### Diretório [templates]

```bash
├── templates
│   ├── main.mk_mssql.j2
│   ├── main.mk_multi.j2
│   ├── main.mk_oracle.j2
│   └── main.mk_postgresql.j2
```

Template para configuração do main.mk para Oracle.
 
 - [main.mk_oracle.j2](roles/main_mk/templates/main.mk_oracle.j2)

Template para configuração do main.mk para SQL Server.

 - [main.mk_mssql.j2](roles/main_mk/templates/main.mk_mssql.j2)
 
Template para configuração do main.mk para PostgreSQL.
 
 - [main.mk_postgresql.j2](roles/main_mk/templates/main.mk_postgresql.j2)

Template para configuração do main.mk para Multibanco.

 - [main.mk_multi.j2](roles/main_mk/templates/main.mk_multi.j2)