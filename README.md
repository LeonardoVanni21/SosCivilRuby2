# SOSCivilRuby - Cheat Sheet

Documentação dos comandos aprendidos em aula e utilizados no trabalho final da matéria.

## Vagrant
### Iniciar uma máquina Vagrant
    vagrant up
**vagrant**: Este é o comando principal do Vagrant, usado para gerenciar máquinas virtuais.<br />
**up**: Inicia a máquina virtual definida no Vagrantfile. Isso cria e provisiona a máquina, tornando-a pronta para uso.

### Parar uma máquina Vagrant
    vagrant halt
**halt**: Interrompe a máquina virtual em execução, desligando-a de forma limpa.

### Suspender uma máquina Vagrant
    vagrant suspend
**suspend**: Pausa a máquina virtual em execução, salvando seu estado atual e recursos do sistema.

### Continuar a execução suspensa
    vagrant resume
**resume**: Continua a execução de uma máquina virtual que estava suspensa.

### Conectar-se a uma máquina Vagrant via SSH
    vagrant ssh
**ssh**: Conecta-se via SSH a uma máquina virtual Vagrant em execução. Isso permite o acesso à linha de comando da máquina virtual. Por exemplo, dentro do terminal do VS Code

## Intalação Rails
### Instalar o Ruby on Rails
    gem install rails
**gem**: O comando `gem` é a ferramenta de gerenciamento de pacotes Ruby, usada para instalar e gerenciar bibliotecas e frameworks Ruby.<br />
**install**: Esta parte do comando especifica que você deseja instalar uma gema.
**rails**: Gema que deseja ser instalada.

## Comandos Rails
### Criar uma aplicação Rails
    rails new SosCivil
**rails**: Comando que indica para o cmd que você quer usar as funções do framework rails.<br />
**new ____**: Cria um novo aplicativo Rails com o nome desejado.

### Criar um modelo no Ruby on Rails
    rails generate model Person name:string email:string cpf:string
**generate**: O subcomando "generate" é usado para criar diferentes componentes em um aplicativo Rails, como modelos, controladores, migrações, etc.<br />
**model**: Nesse caso, "model" é o tipo de componente que estamos gerando, que representa uma tabela de banco de dados. Modelos são usados para interagir com dados em um aplicativo Rails.<br />
**Person**: O nome "Person" é o nome do modelo. Isso cria um modelo chamado "Person" que se relacionará com uma tabela no banco de dados.<br />
**name:string email:string cpf:string**: Estes são os atributos do modelo "Person". Com o nome que será utilizado no banco e seu tipo, no caso de exemplo: string

### Gerar um scaffold no Ruby on Rails
    rails generate scaffold Supplies name:string description:string quantity:integer
**scaffold**: Nesse caso, "scaffold" é o tipo de componente que estamos gerando. Um scaffold gera automaticamente um conjunto completo de recursos CRUD (Create, Read, Update, Delete) para um modelo específico.<br />
**Supplies**: "Supplies" é o nome do modelo que estamos usando como base para o scaffold. Isso criará um modelo chamado "Supplies" e um conjunto completo de controladores e views relacionadas.<br />
**name:string description:string quantity:integer**: Esses são os atributos do modelo que será criado, "Supplies".

### Remover um scaffold no Ruby on Rails
    rails destroy scaffold Supplies
**destroy**: O subcomando "destroy" é usado para remover componentes previamente gerados no aplicativo Rails.<br />
**scaffold**: Especifica que estamos removendo um scaffold, que é um conjunto completo de recursos CRUD (Create, Read, Update, Delete) relacionados a um modelo.<br />
**Supplies**: "Supplies" é o nome do modelo e do scaffold que estamos removendo. Isso desfaz a criação do modelo "Supplies" e todas as views, controllers e migrações associadas a ele.

### Criar um controlador no Ruby on Rails
    rails generate controller Welcome index
**controller**: Neste caso, "controller" é o tipo de componente que estamos gerando. Os controladores são responsáveis por lidar com as ações e as respostas às solicitações dos usuários.<br />
**Welcome**: "Welcome" é o nome do controlador que estamos criando.<br />
**index**: "index" é o nome da ação que estamos adicionando ao controlador "Welcome". A ação "index" é comumente usada para exibir a página inicial.

### Criar uma migração no Ruby on Rails
    rails generate migration AddStateToCities
**migration**: Neste caso, "migration" é o tipo de componente que estamos gerando. As migrações são usadas para fazer alterações no esquema do banco de dados.<br />
**AddStateToCities**: "AddStateToCities" é o nome da migração que estamos criando.<br />

### Iniciar o servidor do Ruby on Rails
    rails server
**server**: Subcomando que inicia o servidor web Ruby on Rails. Ele é geralmente abreviado para `rails s`.

### Executar migrações no Ruby on Rails
    rails db:migrate
**db**: Categoria/agrupamento de tasks do tipo *database*
**migrate**: Realiza a migração do banco executando as alterações pendentes no banco de dados

### Executar as seeds no banco de dados do Ruby on Rails
    rails db:seed
**seed**: Subcomando usado para executar as sementes (seeds) do banco de dados. As sementes são dados iniciais que você pode adicionar ao banco de dados ao criar ou redefinir o banco de dados.
