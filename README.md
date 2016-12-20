# Geopol

Geopol é uma inciativa que leva as tecnologias
de games na direção do uso educacional e institucional, 
especificamente nas instituições de ensino e na capacitação dos profissionais.

Através de perguntas e respostas, misturando conceitos de jogo da memória,
com jogos de desafio com tempo e pontos, o Geopol oferece uma alternativa
na memorização dos conceitos ensinados.

O termo Geopol vem da temática inicial aplicada ao jogo,
que tem a ver com 
[Geopolítica do Petróleo](https://pt.wikipedia.org/wiki/Geopolítica_do_petróleo), 
por conta da empresa que patrocinou esta iniciativa.

Entretanto, o Geopol foi criado para que sejam carregados dinamicamente
perguntas e respostas de qualquer temática. O código fonte está todo
disponível, facilitando trocar a arte para ficar coerente com o interesse.

Este jogo foi feito com o esforço e a criatividade dos alunos do programa Jovem Aprendiz,
em conjunto com o programa de voluntariado 
[Tecno Jovem](http://www.corais.org/tecnojovem2016/), 
nesta empresa que patrocinou o trabalho. 

O alunos selecionados para o programa
são todos da [Instituição São Martinho](http://www.saomartinho.org.br/saomartinho/).

Foi todo desenvolvido usando o [Engine de Jogos Godot](https://godotengine.org/),
que foi ensinado aos alunos durante todas as 8 aulas de 4 horas, em 2016.
As plataformas alvos deste jogo são celulares e tablets com Android & IOs.

Chegar a este jogo com somente 24h de trabalho, incluindo o tempo para ensinar 
os conhecimentos na plataforma 
[Godot](https://godotengine.org/), passando pela linguagem GDScript (parecida com Python  :snake:), mostra não somente a facilidade da plataforma.

Mostra, com muito mais ênfase, a capacidade dos nossos Jovens, que fizeram um excelente trabalho. :blush:

## Google Play

O aplicativo está disponível na loja de aplicativos Google Play
Versão Alfa: [https://play.google.com/apps/testing/org.godotengine.geopol](https://play.google.com/apps/testing/org.godotengine.geopol)


## Como montar o arquivo de perguntas e respostas para carregar no Godot

O arquivo de perguntas e repostas (doravante QA), tem o formato 
JSON (javascript object notation) e tem que ser exatamente como o exemplo abaixo. 
Não esqueça das chaves, das aspas e das vírgulas. Cada pergunta tem um número.
Para testar se você escreveu o arquivo de forma correta,
use o site [JSONLint](http://jsonlint.com/), copie e cole o seu arquivo 
e clique em "Validade JSON". Se tudo der
certo, irá aparecer a mensagem "Valid JSON"


```json
{
"1": {
	"q":"Qual é seu time?", 
	"r":"Chape"
	}, 
"2": {
	"q":"Qual sua cor preferida?", 
	"r":"Verde"
	}, 
"3":{
	"q":"Onde você nasceu?", 
	"r":"Santa Catarina"
	}, 
"4":{
	"q":"Qual é seu nome?", 
	"r":"José"
	}
}

```

## Com inserir as perguntas e respostas no jogo.

Há duas maneiras. 

* Se o jogo for jogado em um dispositivo online (com acesso
à Internet) a melhor formar é editar o arquivo de QA é acessando o arquivo
questions.json aqui mesmo no repositório do GitHub. O arquivo está 
[neste link](https://github.com/rgrcnh/geopol/blob/master/QA/questions.json).

Edite e salve o conteúdo, se for o caso, confira se edição foi bem feita 
usando o [JSONLint](http://jsonlint.com/)
Toda vez que o jogo é inicializado ele tenta buscar o arquivo questions.json, 
de modo online, e caso ele encontre o arquivo, ele salva um cópia local.
Então, para um jogo pegar uma atualização, é necessário que ele acesse à Internet ao menos uma vez.


* Se o jogo for jogado em um dispositivo offine (sem jamais acessar à Internet), o arquivo de QA deve ser copiado para  o arquivo
GDScript de nome `qa.gd`, existente na pasta `res://scripts/qa.gd` do projeto no Godot. Neste caso, todo o conteúdo JSON deve ser atribuído à variável `qa` que está vazia (observe que `qa={}` no arquivo `qa.gd`). Veja o exemplo no código fonte.


## Como usar o repostiório no Github para ajudar a desenvolver o jogo

O git (que é o programa por trás do GitHUB) funciona segundo um fluxo 
onde você primeiro clona um repositório existente, realiza atualizações nos seus arquivos,
com suas contribuições pessoais, para então, depois disso, 
enviar as atualizações para de volta para github, de modo que outros
possam acessar suas contribuições. 

Ao mesmo tempo,
você deve executar periodicamente comandos para atualizar seu repositório local
para receber as contribuições das outras pessoas.

> Atenção: isso não é um Manual do git nem do GitHub, e visa somente ajudar
pessoas iniciantes a contribuir com este projeto específico, por isso, este texto
não contém as melhores práticas gerais para git.


Então há:

 * há um repositório na Internet (no github),
 * um repositório clonado no seu micro (local),
 * uma área de trabalho (chamada de stage), que são os arquivos locais 
 no seu micro sobre os quais vocês está trabalhando.


## Instalando o git

caso o git não esteja instalado no seu Linux/Ubuntu, execute o comando abaixo:

```
sudo apt install git
```

## Fluxo de trabalho

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



# Pessoas:

## Alunos do programa Jovem Aprendiz
* Sophia <michaelis.sophia@yahoo.com.br>
* Lucas <lucas.rufino.3000@gmail.com>,
* Michael <michaelmartins1234@hotmail.com>,
* Karolyne <karollessa10@gmail.com>,
* Gustavo <lgsouza152@gmail.com>,
* Melissa <melissa.nobre00@gmail.com>,
* Bruno <brunoareas99@hotmail.com>,

## Instrutores colaboradores:

* Antony Devalle (roteiro & consultoria em História do Petróleo)
* Glauber Bolzan de Assis Silva (Godot especialista, arte, roteiro & portabilidade)
* Rogério "rgrcnh" Ferreira da Cunha (Godot especialista, programação & prototipagem)

