## **Inventories**

```bash
.
├── group_vars
│   └── local.yml
├── hosts
└── host_vars
    └── template.yml
```

#### **Diretório [group_vars]**

Diretório que mantém as variáveis comum para um grupo de servidores.

#### **Arquivo [local.yml]**

Arquivo [YAML](http://yaml.org/) que armazena as variáveis comum para um grupo de servidores [local] do arquivos hosts.

 - [local.yml](inventories/group_vars/local.yml)

#### **Arquivo [hosts]**

Arquivos com os grupos de hosts que serão implementado o sistema de monitoramento.

 - [hosts](inventories/hosts)

 #### **Diretório [host_vars]**

 Diretório que mantém as variáveis especificas para um servidore(s).

 #### **Arquivo [template.yml]**

Arquivo base para personalização da instalação do sistema de monitoramento para cada cliente.

  - [template.yml](inventories/host_vars/template.yml)