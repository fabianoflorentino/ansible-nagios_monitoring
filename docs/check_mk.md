## **Role [check_mk]**

**OBS:** Serão abordados somente os arquivos mais relevantes da função.

```bash
.
├── handlers
│   └── main.yml
├── packages
│   ├── check-mk-agent_1.2.6p12-1_all.deb
│   ├── check-mk-agent-1.2.6p12-1.noarch.rpm
│   └── check_mk_agent.msi
├── tasks
│   ├── check_mk.yml
│   └── main.yml
├── templates
│   └── livestatus.j2
```


#### Diretório [handlers]

Recebe notificação de recarregar/reiniciar programas.

```bash
.
├── handlers
│   └── main.yml
```

- [main.yml](roles/check_mk/handlers/main.yml)


#### Diretório [packages]

Armazena os pacotes de instalação

```bash
├── packages
│   ├── check-mk-agent_1.2.6p12-1_all.deb
│   ├── check-mk-agent-1.2.6p12-1.noarch.rpm
│   └── check_mk_agent.msi
```

#### Diretório [tasks]

Armazena as variáveis e os parametros para instalação e configuração do check_mk.

```bash
├── tasks
│   ├── check_mk.yml
│   └── main.yml
```

 - [check_mk.yml](roles/check_mk/tasks/check_mk.yml)<br/>
 - [main.yml](roles/check_mk/tasks/main.yml)<br/>

#### Diretório [template]

Arquivos base para customização de arquivos de configuração.

```bash
├── templates
│   └── livestatus.j2
```

- [livestatus.j2](roles/check_mk/templates/livestatus.j2)