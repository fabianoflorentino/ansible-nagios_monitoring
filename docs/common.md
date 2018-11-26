## **Role [common]**

**OBS:** Serão abordados somente os arquivos mais relevantes da função.

```bash
.
├── files
│   ├── mariadb.repo
│   ├── public-yum-ol6.repo
│   └── public-yum-ol7.repo
├── tasks
│   ├── config_selinux.yml
│   ├── main.yml
│   ├── packs.yml
│   └── repos.yml
```

#### Diretório [files]

Contém os arquivos de instalação e configuração dos respositórios e pacotes básicos para o sistema de monitoramento.


```bash
├── files
│   ├── mariadb.repo
│   ├── public-yum-ol6.repo
│   └── public-yum-ol7.repo
```

#### Diretório [tasks]

```bash
├── tasks
│   ├── config_selinux.yml
│   ├── main.yml
│   ├── packs.yml
│   └── repos.yml
```

Garante que o SELinux está desativado.

 - [config_selinux.yml](roles/common/tasks/config_selinux.yml)

Agrupa as tarefas a serem executadas. 

 - [main.yml](roles/common/tasks/main.yml)

Instalada os pacotes básicos para o sistema de monitoramento

 - [packs.yml](roles/common/tasks/packs.yml)

Instala os reposiórios base dos pacotes necessários para o sistema de monitoramento.

 - [repos.yml](roles/common/tasks/repos.yml)