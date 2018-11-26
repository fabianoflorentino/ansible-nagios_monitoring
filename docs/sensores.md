## **Role [sensores]**

**OBS:** Serão abordados somente os arquivos mais relevantes da função.

```bash
├── files
│   ├── check_mssql_health
│   ├── check_postgres.pl
│   └── list_tablespaces_postgres.sh
├── handlers
│   └── main.yml
├── tasks
│   ├── install.yml
│   ├── main.yml
│   ├── remove.yml
│   └── sensores_mssql.yml
├── templates
    ├── check_backup_compress.sh.j2
    ├── check_backup_export.sh.j2
    ├── check_dg_agent.sh
    ├── check_integrity_nuvem_base.sh.j2
    ├── check_integrity_nuvem.sh.j2
    ├── check_integrity_red_local.sh.j2
    ├── check_list_backup_local.sh.j2
    ├── check_list_backup_nuvem.sh.j2
    ├── check_list_backup_red_banco.sh.j2
    ├── check_list_backup_red_sistema.sh.j2
    ├── check_list_backup_sistema_local.sh.j2
    ├── check_rman_agent_archive.sh.j2
    ├── check_rman_agent_full.sh.j2
    ├── check_size_backup_banco.sh.j2
    ├── check_size_backup_sistema.sh.j2
    ├── check_version_agent.sh.j2
    ├── list_tablespace.sh.j2
    └── mssql_list_tablespace.j2
```

#### Diretório [files]

Armazena os arquivos de sensores para instalação e configuração do sistema de monitoramento.

```bash
├── files
│   ├── check_mssql_health
│   ├── check_postgres.pl
│   └── list_tablespaces_postgres.sh
```

#### Diretório [handlers]

Recebe notificação de recarregar/reiniciar programas.

```bash
├── handlers
│   └── main.yml
```

#### Diretório  [tasks]

Armazena as variáveis e os parametros para instalação e configuração dos sensores de monitoramento.

```bash
├── tasks
│   ├── install.yml
│   ├── main.yml
│   ├── remove.yml
│   ├── sensores_mssql.yml
│   └── sensores_pssql.yml
```

Armazena as variáveis e os parametros para instalação e configuração dos sensores de monitoramento dos backups's do Oracle.

 - [install.yml](roles/sensores/tasks/install.yml)
 
 Agrupa as tarefas a serem executadas. 

 - [main.yml](roles/sensores/tasks/main.yml)
 
 Armazena as variáveis e os parametros para remoção dos sensores de monitoramento de Backup's do Oracle.

 - [remove.yml](roles/sensores/tasks/remove.yml)
 
 Armazena as variáveis e os parametros para instalação e configuração dos sensores de monitoramento do banco SQL Server.

 - [sensores_mssql.yml](roles/sensores/tasks/sensores_mssql.yml)

Armazena as variáveis e os parametros para instalação e configuração dos sensores de monitoramento do banco PostgreSQL.

- [sensores_mssql.yml](roles/sensores/tasks/sensores_pssql.yml)