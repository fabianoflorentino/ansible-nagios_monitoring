## **Role [freetds]**

**OBS:** Serão abordados somente os arquivos mais relevantes da função.


```bash
├── driver
│   └── freetds-stable.tgz
├── tasks
│   ├── freetds_conf.yml
│   ├── freetds_drive.yml
│   └── main.yml
├── templates
│   └── freetds.conf.j2
```

#### Diretório [driver]

Pacote que contem os arquivos de configuração para compilar, configurar e instalar o driver freetds.

```bash
├── driver
│   └── freetds-stable.tgz
```

#### Diretorio [tasks]

Armazena as variáveis e os parametros para instalação e configuração do freetds drive.

```bash
├── tasks
│   ├── freetds_conf.yml
│   ├── freetds_drive.yml
│   └── main.yml
```

Agrupa as tarefas a serem executadas. 

- [main.yml](roles/freetds/tasks/main.yml)

Configura, compila e instala o driver DBD-Oracle.

- [freetds_drive.yml](roles/freetds/tasks/freetds_drive.yml)

Configura o arquivo freetds.conf.

- [freetds_conf.yml](roles/freetds/tasks/freetds_conf.yml)

#### Diretório [template]

Arquivo base para configuração do arquivo freetds.conf

```bash
├── templates
│   └── freetds.conf.j2
```

- [freetds.conf.j2](roles/freetds/templates/freetds.conf.j2)