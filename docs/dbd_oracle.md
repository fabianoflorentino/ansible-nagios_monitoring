## **Role [dbd_oracle]**

**OBS:** Serão abordados somente os arquivos mais relevantes da função.

```bash
.
├── driver
│   └── oracle_driver.tgz
├── handlers
│   └── main.yml
├── tasks
│   ├── main.yml
│   ├── oracle_driver.yml
│   └── tnsnames_ora.yml
├── templates
│   └── tnsnames.ora.j2
```

#### Diretório [driver]

Pacote que contem os arquivos de configuração para compilar, configurar e instalar o driver DBD-Oracle.

```bash
├── driver
│   └── oracle_driver.tgz
```

#### Diretório [handlers]

Recebe notificação de recarregar/reiniciar programas.

```bash
├── handlers
│   └── main.yml
```

 - [main.yml](roles/dbd_oracle/handlers/main.yml)

#### Diretorio [tasks]

Armazena as variáveis e os parametros para instalação e configuração do DBD-Oracle drive.

```bash
├── tasks
│   ├── main.yml
│   ├── oracle_driver.yml
│   └── tnsnames_ora.yml
```

Agrupa as tarefas a serem executadas. 

- [main.yml]roles/dbd_oracle/tasks/main.yml)

Configura, compila e instala o driver DBD-Oracle.

- [oracle_driver.yml](roles/dbd_oracle/tasks/oracle_driver.yml)

Configura o arquivo tnsnames.ora.

- [tnsnames_ora.yml](roles/dbd_oracle/tasks/tnsnames_ora.yml)