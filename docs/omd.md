## **Role [omd]**

**OBS:** Serão abordados somente os arquivos mais relevantes da função.

```bash
├── files
│   ├── contentframe_background.jpg
│   ├── dashboard.css
│   ├── dashboard.py
│   ├── favicon.ico
│   ├── hashlib.py
│   ├── mk_logo_small.gif
│   ├── sidebar_background.jpg
│   ├── sidebar.css
│   ├── sidebar.py
│   └── sidebar_top.png
├── handlers
│   └── main.yml
├── packages
│   ├── omd-1.30.rhel6.x86_64.rpm
│   └── omd-1.30.rhel7.x86_64.rpm
├── tasks
│   ├── 2com_template.yml
│   ├── config_user.yml
│   ├── main.yml
│   ├── nagios_config.yml
│   ├── omd.yml
│   └── site_monitor.yml
├── templates
│   ├── builtin.py.j2
│   ├── config_user.sh.j2
│   ├── main.mk.j2
│   ├── nagios.cfg.j2
│   └── omd_profile.j2
```

#### Diretório [files]

Arquivos para configuração da Dashboard do monitoramento com o layout 2com.

```bash
├── files
│   ├── contentframe_background.jpg
│   ├── dashboard.css
│   ├── dashboard.py
│   ├── favicon.ico
│   ├── hashlib.py
│   ├── mk_logo_small.gif
│   ├── sidebar_background.jpg
│   ├── sidebar.css
│   ├── sidebar.py
│   └── sidebar_top.png
```

#### Diretório [handlers]

Recebe notificação de recarregar/reiniciar programas.


```bash
├── handlers
│   └── main.yml
```

#### Diretório [packages]

Pacotes de instalação do OMD.

```bash
├── packages
│   ├── omd-1.30.rhel6.x86_64.rpm
│   └── omd-1.30.rhel7.x86_64.rpm
```

#### Diretório [tasks]

Armazena as variáveis e os parametros para instalação e configuração do OMD.

```bash
├── tasks
│   ├── 2com_template.yml
│   ├── config_user.yml
│   ├── main.yml
│   ├── nagios_config.yml
│   ├── omd.yml
│   └── site_monitor.yml
```

Configura o dashboard do monitoramento com o template 2com.

- [2com_template.yml](roles/omd/tasks/2com_template.yml)

Configura o usuário e os grupos de usuários para o usuário do OMD.

- [config_user.yml](roles/omd/tasks/config_user.yml)

Agrupa as tarefas a serem executadas. 

- [main.yml](roles/omd/tasks/main.yml)

Configura o arquivo nagios.cfg.

- [nagios_config.yml](roles/omd/tasks/nagios_config.yml)

Realiza a instalação do pacote do OMD.

- [omd.yml](roles/omd/tasks/omd.yml)

Configuraçao do novo site para o sistema de monitoramento.

- [site_monitor.yml](roles/omd/tasks/site_monitor.yml)


#### Diretório [templates]

```bash
├── templates
│   ├── builtin.py.j2
│   ├── config_user.sh.j2
│   ├── main.mk.j2
│   ├── nagios.cfg.j2
│   └── omd_profile.j2
```

Arquivos template para realizar as configurações e customizações do sistema de monitoramento.

- [builtin.py.j2](roles/omd/templates/builtin.py.j2)
- [config_user.sh.j2](roles/omd/templates/config_user.sh.j2)
- [main.mk.j2](roles/omd/templates/main.mk.j2)
- [nagios.cfg.j2](roles/omd/templates/nagios.cfg.j2)
- [omd_profile.j2](roles/omd/templates/omd_profile.j2)