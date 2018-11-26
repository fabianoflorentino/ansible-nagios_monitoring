# **2com Monitoramento**<br/>
#### **Implantação do monitoramento com ansible.**<br/>

# **Descrição**<br/>
**Auto:** 2com Consulting (Time de monitoramento)<br/>
**Manutenção**: Time de monitoramento.<br/>
**Licença**: GPL (https://pt.wikipedia.org/wiki/GNU_General_Public_License)<br/>

Sistema de automação com Ansible para realizar implementação do sistema de<br/>
monitoramento OMD ([Open Monitoring Distribution](http://omdistro.org/)) para sistemas operacionais baseados na distribuição RedHat.

**Sistemas operacionais suportados:**<br/>

 - **Oracle Linux 6+**
 - **Oracle Linux 7+**
 - **CentOS 6+**
 - **CentOS 7+**

## **Sumário**

1. [Diretório e Arquivos](docs/diretorios_e_arquivos.md#diretórios-e-arquivos)<br/>
2. [Inventories](docs/inventories.md#inventories)<br/>
3. [Roles](docs/roles.md#roles)<br/>
  3.1. [check_mk](docs/check_mk.md#role-check_mk)<br/>
  3.2. [common](docs/common.md#role-common)<br/>
  3.3. [dbd_oracle](docs/dbd_oracle.md#role-dbd_oracle)<br/>
  3.4. [dbd_sybase](docs/dbd_sybase.md#role-dbd_sybase)<br/>
  3.5. [freetds](docs/freetds.md#role-freetds)<br/>
  3.6. [main_mk](docs/main_mk.md#role-main_mk)<br/>
  3.7. [omd](docs/omd.md#role-omd)<br/>
  3.8. [postgresql_client](docs/postgresql_client.md#role-postgresql_client.md)<br/>
  3.9. [sensores](docs/sensores.md#role-sensores)<br/><br/>


## **Modo de Usar**

#### **Requisitos :**

```
Chave SSH:
 - Realize a troca de chaves entre o Git e o servidor do cliente.

Sistema Operacional:
 - Oracle Linux 6+
 - CentOS 6+
 - Oracle Linux 7+
 - CentOS 7+

Ansible:
 - Version: 2.6+

Git
 - version 2.7.4
```

### **1. Git**

```bash
yum install -y git
```

### **2. 2com_monitor_multibanco**

```bash
git clone git@gitlab.com:2com-ansible-monitoramento/2com_monitor_multibanco.git

cd 2com_monitor_multibanco
```

Instale o Ansible
```bash
cd ansible_install
bash run --install
```

Edite o arquivo arquivo de configuração ```inventories/host_vars/<HOSTNAME DO SERVIDOR>.yml```

 ```yml
 ---
# <INFO>
#   ^^^ -> Informações do cliente

# Cliente
nome_cliente: "<NOME DO CLIENTE>"
site_name: "<SITE DO CLIENTE>"
ip_dbe: "<IP BANCO DE DADOS>"

hostname_main:
  - "{{site_name}}-dbprimario"

host_info:
  - "'{{site_name}}-dbprimario' : '{{ip_dbe}}'"

# Configuração para Banco de dados
oracle_sns: "true"                                 # Sensores de monitoramento para Oralce
mssql_sns: "false"                                 # Sensores de monitoramento para SQL Server
pssql_sns: "false"                                 # Sensores de monitoramento para PostgreSQL
multi_banco: "false"                               # Sensores de monitoramento para Oracle e SQL Server

# Configuração Oracle Database
oracle_ip: "<IP LOCAL>"
oracle_asm: "false"                                # Ativa o sensor do ASM
oracle_flash: "true"                               # Ativa o sensor do Flash Recovey Area
oracle_bse: "/u01/app/oracle/product"              # Path base de instalação do Oracle
oracle_ver: "11.2.0"                               # Versão do Oracle
oracle_srv: "XE"                                   # Service Name 
oracle_app: "xe"                                   # Diretório do software do Oracle
oracle_hst: "{{oracle_ip}}"
oracle_dbe: 
  - WINT                                           # Nome da Base de Dados
oracle_rem:
  - WINT

# Configuração PostgreSQL
pssql_dbe:
  - postgresql

# Configuração SQL Server
mssql_ip: "<IP SQL SERVER>"
mssql_port: "<PORTA MSSQL>"
mssql_dbe:
  - sigatss                                        # Nome da Base de Dados
  - sigaofc
mssql_rem:
  - sigatss
  - sigaofc

# Configuração Oracle Cliente
oracle_client_drv: "true"                          # Ativa a instalação do Driver Oracle
oracle_client_bse: "/u01/app/oracle/product"       # Path base de instalação do Oracle
oracle_client_ver: "11.2.0"                        # Versão do Oracle
oracle_client_srv: "XE"                            # Service Name
oracle_client_app: "xe"                            # Diretório do software do Oracle

# Tipo de Sensor
multi_base: "false"                                # Ativa o monitoramento para mais de uma base no mesmo servidor

# Backup Nuvem
plugin_bkp_nuvem: "false"                          # Ativa o monitoramento do backup nuvem

# Backup Banco
plugin_bkp_banco: "false"                          # Ativa o monitoramento do backup banco
plugin_bkp_banco_size: ""                          # Tamanho do backup banco
plugin_bkp_banco_dir: "/db/backup/backup_old"      # Diretório para backup local
plugin_bkp_banco_dir_red: "/mnt/backup_check"      # Diretório para backup redundancia

# Winthor
plugin_winthor: "false"                            # Ativa o monitoramento do backup sistema
plugin_winthor_size_bkp: ""                        # Tamanho do backup sistema
plugin_winthor_bkp_dir: "/db/backup/backup_old"    # Diretório para backup local
plugin_winthor_bkp_dir_red: "/mnt/backup_check"    # Diretório para backup redundancia
 ```

 Dentro do diretório **2com_monitor_multibanco** execute

 ```bash
 ansible-playbook -i inventories/hosts -l $HOSTNAME -k site.yml
 SSH password:
 ```

Aguarde a execução das tarefas até que seja apresentado a saída abaixo.

```bash
RUNNING HANDLER [check_mk : Restart Xinetd] ***********************************
changed: [srv-monitor-1]

RUNNING HANDLER [omd : Service OMD] *******************************************
changed: [srv-monitor-1]

RUNNING HANDLER [omd : Reload CMK] ********************************************
changed: [srv-monitor-1]

PLAY RECAP ********************************************************************
srv-monitor-1              : ok=44   changed=25   unreachable=0    failed=0
```

```bash
ok=44           # Tarefas de acordo com o necessário.
changed=25      # Tarefas que foram alteradas para o esperado.
unreachable=0   # Caso o host não esteja acessível
failed=0        # Alguma tarefa falhou durante o processo.
```