# Geopol
Jogo sobre perguntas e respostas com GODOT, para uso em geopolítica do petróleo.
Feito com os alunos jovens aprendizes da instituição de ensino São Martinho,
em 2016.

## Como usar o repostiório

O git funciona segundo um fluxo onde você primeiro clona
um repositório existente e depois disso você envia atualizações
para o github, contendo suas contribuições, e também executa 
periodicamente comandos para atualizar seu repositório local
para receber as contribuições das outras pessoas.

Então há:

. há um repositório na Internet (no github), 
. um repositório clonado no seu micro (local) 
. uma área de trabalho (chamada de stage), que são os arquivos locais
no seu micro sobre os quais vocês está trabalhando.

Existem sempre três coisas importantes que devem ser feitas: 

* a primeira é atualizar o seu repositório local com as atualizações
que você mesmo está fazendo nos seus arquivos, ou seja, atualizar do
stage para o rep. local. Isso é feito com os comandos `git add <nome dos arquivos>`
e com `git commit -m "seu comentario"`.

 * a segunda é enviar as atualizações do repositório local para o github.
de modo a compartilhar seus avanços com os outros.
Isso é feito com o comando `git push origin master` 

* a terceira é atualizar seu repositório local e seu stage com as mudanças
que outros fizeram, se não, correrá o risco de você ficar desatualizado.
Isso é feito com `git pull origin master`. *Esta etapa deve ser feita sempre
antes que você iniciar novas mudanças!!!*

*Aqui vale uma regra de ouro:* Não envie nada para o github se 
o jogo não estiver funcionando e testado localmente.
Só envie quando você testar e certificar que está tudo ok!


### Para clonar o geopol
Para clonar o repositório no linux, se já não foi feito antes, abra um 
emulador terminal no Linux e digite os comandos abaixo:

```
cd 
cd Documentos
git clone https://github.com/rgrcnh/geopol.git
cd geopol
```

vai ser criada uma pasta `geopol`, abaixo da pasta Documentos, para a qual você
já se posicionou dando o comando `cd geopol`. Seu projeto ficará sempre na pasta `/home/aluno/Documentos/geopol`. Para ir para esta pasta (a pasta do projeto) execute o comando:

```
cd /home/aluno/Documentos/geopol
```


### Para receber as atualizacoes

Vá para a pasta do projeto é execute:

```
git pull origin master
```

### Para enviar atualizações

Essa fase ocorre em duas etapas. A primeira você envia as mudanças que fez do 'stage' para o repositório local, a segunda você manda do repositório local para o github.

> DICA: Se você não lembra os aquivos que alterou, é possível executar o comando `git status` para ele listar tudo que está mudado.

#### Para atualizar o repositório local, execute:

```
git add *
git commit -m "seus comentarios entre aspas e sem acentos o cedilha"
```

#### Para atualizar o repositório no gitbub:

```
git push origin master
```



# Colaboradores:

Sophia <michaelis.sophia@yahoo.com.br>,
Lucas <lucas.rufino.3000@gmail.com>,
Michael <michaelmartins1234@hotmail.com>,
Karolyne <karollessa10@gmail.com>,
Gustavo <lgsouza152@gmail.com>,
Melissa <melissa.nobre00@gmail.com>,
Bruno <brunoareas99@hotmail.com>,
