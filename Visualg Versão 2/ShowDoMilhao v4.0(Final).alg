algoritmo "Show do Milhão v4.0"
// Função : Jogo Show do Milhão
// Autor : Jhony lara
// Data : 09/07/2016
var
vet: vetor [0..19] de inteiro  // Vetor onde são inseridos as perguntas já informadas para não repeti-las
vet1: vetor [0..10] de inteiro // Vetor onde são inseridos as questões já retiradas para não repeti-las
r: vetor [0..19] de inteiro // Vetor de Resposta
mat: vetor [0..19,0..5] de caractere  // Matriz de Perguntas e Alternativas
random:inteiro // Recebe valor aleatório para sortear pergunta
pontos:real // Recebe o placar
nome:caractere // Recebe o nome do jogador
i:inteiro // Junto com comando "Para" fazendo loop para exibir a "coluna" da matriz "mat"
u:inteiro // Junto com comando "para"  zerando o "vet1" para quando ocorrer o loop não estar preenchido
cont, cont1, cont2:inteiro // Contadores
outro:inteiro // Recebe valor para sair da menu ajuda e sobre o jogo
res:inteiro  //  Recebe o mesmo valor do "random" a fim de definir qual e a resposta correta no vetor "r"
resp:inteiro // Recebe o valor de resposta
menuinicial, menuquiz:inteiro // Recebe o menu desejado
ajuda:inteiro // Recebe o valor aleatório para retirar uma questão
qtdajuda, qtdpulo:inteiro  // Quantidade de pulos e ajudas definidos
loop:inteiro  // Valor que permite o loop caso seja inseridos comandos fora de alternativas
certeza:caractere // Recebe se a pessoa realmente quer sair
procedimento introq () //Procedimento para exibir acima da questão
inicio
escreval("     :O@MO2r     ")
escreval("    BM@M@M@@@5     __  __       _        ____                   _ _ ")
escreval("   @M5   :YOB@U   |  \/  |     | |      / __ \                 | | |")
escreval("  ;MB:      JB0   | \  / | __ _| |__   | |  | | ___  ___  ___  | | |")
escreval("  7Bu ;@u,0Oj@i   | |\/| |/ _` | '_ \  | |  | |/ _ \/ _ \/ _ \ | | |")
escreval("  7L  .i. Yii:    | |  | | (_| | | | | | |__| |  __/  __/  __/ |_|_|")
escreval("   u.;G;iNY17     |_|  |_|\__,_|_| |_|  \____/ \___|\___|\___| (_|_)")
escreval("  iB :v..rJq:    ")
escreval("q@B@Z .irrr.     ")
escreval("@B@M@M :M5iMX:   ")
escreval("M@B@B@B r@Y@@@BG ")
escreval("@@BB@B@BE:E@@BB@F")
escreval("B@@BM@M@MqXOB@@@M")
escreval("--------------------------------------------------------------------------------------------")
fimprocedimento
procedimento perdeutudo ()//Procedimento quando a pessoa erra a pergunta final
inicio
limpatela
escreval("                 ")
escreval("      :O@MO2r     ")
escreval("     BM@M@M@@@5      _____             _ ")
escreval("    @M5   :YOB@U    |  __ \           | |            ")
escreval("   ;MB:      JB0    | |__) |__ _ __ __| | ___ _   _  ")
escreval("   7Bu ;@u,0Oj@i    |  ___/ _ \ '__/ _` |/ _ \ | | | ")
escreval("   7L  .i. Yii:     | |  |  __/ | | (_| |  __/ |_| | ")
escreval("    u.;G;iNY17      |_|   \___|_|__\__,_|\___|\__,_| ")
escreval("   iB :v..rJq:             |__   __|      | |      ")
escreval(" q@B@Z .irrr.                 | |_   _  __| | ___  ")
escreval(" @B@M@M :M5iMX:               | | | | |/ _` |/ _ \ ")
escreval(" M@B@B@B r@Y@@@BG             | | |_| | (_| | (_) |")
escreval(" @@BB@B@BE:E@@BB@F            |_|\__,_|\__,_|\___/")
escreval(" B@@BM@M@MqXOB@@@M")
escreval(" BB@BBB@@BB@M@BBM@")
escreval("--------------------------------------------------------------------------------------------")
escreval("Você errou ",nome,", e perdeu todo seu ouro")
escreval("--------------------------------------------------------------------------------------------")
fimalgoritmo
fimprocedimento
procedimento perdeu ()  //Procedimento quando a pessoa erra a pergunta normal
inicio
limpatela
escreval("                 ")
escreval("      :O@MO2r     ")
escreval("     BM@M@M@@@5      ______                        _ _ _ ")
escreval("    @M5   :YOB@U    |  ____|                      | | | |")
escreval("   ;MB:      JB0    | |__   _ __ _ __ ___  _   _  | | | |")
escreval("   7Bu ;@u,0Oj@i    |  __| | '__| '__/ _ \| | | | | | | |")
escreval("   7L  .i. Yii:     | |____| |  | | | (_) | |_| | |_|_|_|")
escreval("    u.;G;iNY17      |______|_|  |_|  \___/ \__,_| (_|_|_)")
escreval("   iB :v..rJq:             ")
escreval(" q@B@Z .irrr.               ")
escreval(" @B@M@M :M5iMX:          ")
escreval(" M@B@B@B r@Y@@@BG        ")
escreval(" @@BB@B@BE:E@@BB@F          ")
escreval(" B@@BM@M@MqXOB@@@M")
escreval(" BB@BBB@@BB@M@BBM@")
escreval ("")
escreval("--------------------------------------------------------------------------------------------")
escreval("Você errou ",nome,", com isso ganhou: ",pontos/2:3:3, " reais ")
escreval("--------------------------------------------------------------------------------------------")
fimalgoritmo
fimprocedimento
procedimento desistiu () //Procedimento quando a pessoa desiste
inicio
limpatela
escreval("                 ")
escreval("      :O@MO2r     ")
escreval("     BM@M@M@@@5     _    _       _                       _ ")
escreval("    @M5   :YOB@U   | |  | |     | |                     (_)")
escreval("   ;MB:      JB0   | |__| | __ _| |__   __ _  __ _  __ _ _ ")
escreval("   7Bu ;@u,0Oj@i   |  __  |/ _` | '_ \ / _` |/ _` |/ _` | |")
escreval("   7L  .i. Yii:    | |  | | (_| | | | | (_| | (_| | (_| | |")
escreval("    u.;G;iNY17     |_|  |_|\__,_|_| |_|\__,_|\__,_|\__,_|_| ")
escreval("   iB :v..rJq:         / ____|          | |        | |     /_/  ")
escreval(" q@B@Z .irrr.         | (___   ___ _ __ | |_ __ _  | |     __ _ ")
escreval(" @B@M@M :M5iMX:        \___ \ / _ \ '_ \| __/ _` | | |    / _` |")
escreval(" M@B@B@B r@Y@@@BG      ____) |  __/ | | | || (_| | | |___| (_| |")
escreval(" @@BB@B@BE:E@@BB@F    |_____/ \___|_| |_|\__\__,_| |______\__,_|")
escreval(" B@@BM@M@MqXOB@@@M")
escreval(" BB@BBB@@BB@M@BBM@")
escreval ("")
escreval("--------------------------------------------------------------------------------------------")
escreval ("Você desistiu ",nome,", com isso ganhou: ",pontos:3:3, " reais ")
escreval("--------------------------------------------------------------------------------------------")
fimalgoritmo
fimprocedimento
procedimento questaovitoria () // Layout da questão valendo 1m
inicio
escreval("                 ")
escreval("      :O@MO2r    __      __   _                _  ")
escreval("     BM@M@M@@@5  \ \    / /  | |              | | ")
escreval("    @M5   :YOB@U  \ \  / /_ _| | ___ _ __   __| | ___")
escreval("   ;MB:      JB0   \ \/ / _` | |/ _ \ '_ \ / _` |/ _ \  ")
escreval("   7Bu ;@u,0Oj@i    \  / (_| | |  __/ | | | (_| | (_) | ")
escreval("   7L  .i. Yii:      \/ \__,_|_|\___|_| |_|\__,_|\___/ ")
escreval("    u.;G;iNY17       __   ___   ___   ___   ___   ___   ___   ___   ___     _   ")
escreval("   iB :v..rJq:      /_ | / _ \ / _ \ / _ \ / _ \ / _ \ / _ \ / _ \ / _ \   | |  ")
escreval(" q@B@Z .irrr.        | || | | | | | | | | | | | | | | | | | | | | | | | | / __)")
escreval(" @B@M@M :M5iMX:      | || | | | | | | | | | | | | | | | | | | | | | | | | \__ \")
escreval(" M@B@B@B r@Y@@@BG    | || |_| | |_| | |_| | |_| | |_| | |_| | |_| | |_| | (   /")
escreval(" @@BB@B@BE:E@@BB@F   |_(_)___/ \___/ \___(_)___/ \___/ \___( )___/ \___/   |_|")
escreval(" B@@BM@M@MqXOB@@@M                                         |/ ")
escreval(" BB@BBB@@BB@M@BBM@")
escreval("--------------------------------------------------------------------------------------------")
fimprocedimento
procedimento vitoria () //Procedimento caso acerte todas questoes
inicio
limpatela
escreval("                 ")
escreval("      :O@MO2r     ")
escreval("     0:O@MO2r00   __      __        ___    _____             _  ")
escreval("    @M5   :YOB@U  \ \    / /       |/ \|  / ____|           | | ")
escreval("   ;MB:      JB0   \ \  / /__   ___ ___  | |  __  __ _ _ __ | |__   ___  _   _ ")
escreval("   7Bu ;@u,0Oj@i    \ \/ / _ \ / __/ _ \ | | |_ |/ _` | '_ \| '_ \ / _ \| | | |  ")
escreval("   7L  .i. Yii:      \  / (_) | (_|  __/ | |__| | (_| | | | | | | | (_) | |_| |")
escreval("    u.;G;iNY17        \/ \___/ \___\___|  \_____|\__,_|_| |_|_| |_|\___/ \__,_| ")
escreval("   iB :v..rJq:         __   ___   ___   ___   ___   ___   ___   ___   ___     _  ")
escreval(" q@B@Z .irrr.         /_ | / _ \ / _ \ / _ \ / _ \ / _ \ / _ \ / _ \ / _ \   | | ")
escreval(" @B@M@M :M5iMX:        | || | | | | | | | | | | | | | | | | | | | | | | | | / __)")
escreval(" M@B@B@B r@Y@@@BG      | || | | | | | | | | | | | | | | | | | | | | | | | | \__ \")
escreval(" @@BB@B@BE:E@@BB@F     | || |_| | |_| | |_| | |_| | |_| | |_| | |_| | |_| | (   /")
escreval(" B@@BM@M@MqXOB@@@M     |_(_)___/ \___/ \___(_)___/ \___/ \___( )___/ \___/   |_|  ")
escreval(" BB@BBB@@BB@M@BBM@                                           |/                  ")
escreval("")
escreval("--------------------------------------------------------------------------------------------")
escreval("PARABÉNS ",(maiusc(nome))," VOCÊ GANHOU 1.000.000,00 DE REAIS, MAAAAH OEEEE")
escreval("--------------------------------------------------------------------------------------------")
fimalgoritmo
fimprocedimento
procedimento animacao () //Procedimento faz a animação inicial
var
cont3:inteiro
inicio
repita
   escreval("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$")
   escreval("$$$D     $$    $    $$$$    8$$$    $    +   8$$$$$$$       ~$$$$$Z    $$$$$$$$$")
   escreval("$$    $   $    $,   $$        $$    $    $$  $$$$$$$$$   $~   $$+        $$$$$$$")
   escreval("$$      $$$    $$   $~   $$    $$           $$$$$$$$$$   $$    $   $$    $$$$$$$")
   escreval("$$$       $         $    $$$   $$8          $$$$$$$$$$   $$    $   ?$$   :$$$$$$")
   escreval("$$ ?$$    $   =$$   $$    $$   $$$    $    $$$$$$$$$$$   $$    $    $$   $$$$$$$")
   escreval("$$       $     $     $$       $$$$$  N$$  ?$$$$$$$$$$        ,$$$       $$$$$$$$")
   escreval("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$")
   escreval("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$")
   escreval("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$? D$ $$$$$$$$$$$$$$$$$$$$$$$$")
   escreval("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$  :  $$$$$$$$$$$$$$$$$$$$$$$$")
   escreval("$$$$$$$$:   ,$$$    $     $$     $$$$,    $     $$$$   $$$$$$$     :$$$$$$$$$$$$")
   escreval("$$$$$$$$$    $$    $$$   Z$$$   $$$$$$   :$,   $$$$$    $$$$?   $    $$$$$$$$$$$")
   escreval("$$$$$$$$$:         $$$   $$$$   $$$$$$         $$$$      $$$   $$$    $$$$$$$$$$")
   escreval("$$$$$$$$$  $       $$$   $$$$   $$$$$$    $    $$$7  Z    $$    $$    $$$$$$$$$$")
   escreval("$$$$$$$$$  $   $   $$$   N$$$   $$  $$   I$    $$$        $$     $   $$$$$$$$$$$")
   escreval("$$$$$$$$    $ $     $     $$        $     N     =   +$      $$,     $$$$$$$$$$$$")
   escreval("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   limpatela
   escreval("                                                                                ")
   escreval("   D$$$$$  $$$$ $$$$    $$$$8   $$$$ $$$$+$$$8       $$$$$$$~     Z$$$$         ")
   escreval("  $$$$ $$$ $$$$ ,$$$  $$$$$$$$  $$$$ $$$$  $$         $$$ ~$$$  +$$$$$$$$       ")
   escreval("  $$$$$$   $$$$  $$$ ~$$$  $$$$  $$$$$$$$$$$          $$$  $$$$ $$$  $$$$       ")
   escreval("   $$$$$$$ $$$$$$$$$ $$$$   $$$  8$$$$$$$$$$          $$$  $$$$ $$$?  $$$:      ")
   escreval("  $?  $$$$ $$$=  $$$  $$$$  $$$   $$$$ $$$$           $$$  $$$$ $$$$  $$$       ")
   escreval("  $$$$$$$ $$$$$ $$$$$  $$$$$$$     $$N  $$?          $$$$$$$$,   $$$$$$$        ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                   ?$D $                        ")
   escreval("                                                   $$:$$                        ")
   escreval("        :$$$,   $$$$ $$$$$  $$$$$    ,$$$$ $$$$$    $$$       $$$$$:            ")
   escreval("         $$$$  $$$$   $$$Z   $$$      $$$: ,$$$     $$$$    ?$$$ $$$$           ")
   escreval("         :$$$$$$$$$   $$$    $$$      $$$$$$$$$    $$$$$$   $$$   $$$$          ")
   escreval("         $$ $$$$$$$   $$$    $$$      $$$$ $$$$   7$$Z$$$$  $$$$  $$$$          ")
   escreval("         $$ $$$ $$$   $$$N   $$$  $$  $$$I $$$$   $$$$$$$$  $$$$$ $$$           ")
   escreval("        $$$$ $ $$$$$ $$$$$  $$$$$$$$ $$$$$N$$$$$=$$$+ $$$$$$  ,$$$$$            ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   cont <- cont +1
   limpatela
   ate cont = 5
   fimprocedimento
procedimento intro ()  //Procedimento que fica fixo no menu
inicio
   escreval("                                                                                ")
   escreval("   D$$$$$  $$$$ $$$$    $$$$8   $$$$ $$$$+$$$8       $$$$$$$~     Z$$$$         ")
   escreval("  $$$$ $$$ $$$$ ,$$$  $$$$$$$$  $$$$ $$$$  $$         $$$ ~$$$  +$$$$$$$$       ")
   escreval("  $$$$$$   $$$$  $$$ ~$$$  $$$$  $$$$$$$$$$$          $$$  $$$$ $$$  $$$$       ")
   escreval("   $$$$$$$ $$$$$$$$$ $$$$   $$$  8$$$$$$$$$$          $$$  $$$$ $$$?  $$$:      ")
   escreval("  $?  $$$$ $$$=  $$$  $$$$  $$$   $$$$ $$$$           $$$  $$$$ $$$$  $$$       ")
   escreval("  $$$$$$$ $$$$$ $$$$$  $$$$$$$     $$N  $$?          $$$$$$$$,   $$$$$$$        ")
   escreval("                                                                                ")
   escreval("                                                                                ")
   escreval("                                                   ?$D $                        ")
   escreval("                                                   $$ $$                        ")
   escreval("        :$$$,   $$$$ $$$$$  $$$$$    ,$$$$ $$$$$    $$$       $$$$$:            ")
   escreval("         $$$$  $$$$   $$$Z   $$$      $$$: ,$$$     $$$$    ?$$$ $$$$           ")
   escreval("         :$$$$$$$$$   $$$    $$$      $$$$$$$$$    $$$$$$   $$$   $$$$          ")
   escreval("         $$ $$$$$$$   $$$    $$$      $$$$ $$$$    $$ $$$$  $$$$  $$$$          ")
   escreval("         $$ $$$ $$$   $$$N   $$$  $$  $$$I $$$$   $$$$$$$$  $$$$$ $$$           ")
   escreval("        $$$$ $ $$$$$ $$$$$  $$$$$$$$ $$$$$ $$$$$ $$$+ $$$$$$  ,$$$$$            ")
   escreval("________________________________________________________________________________")
   fimprocedimento
procedimento carregarfacil () // Carrega as questões de nível fácil
inicio
qtdajuda <-3
qtdpulo <- 3
r[0] <- 2      // Respostas das questões
r[1] <- 2
r[2] <- 3
r[3] <- 2
r[4] <- 3
r[5] <- 1
r[6] <- 3
r[7] <- 4
r[8] <- 3
r[9] <- 3
r[10] <- 2
r[11] <- 3
r[12] <- 4
r[13] <- 1
r[14] <- 4
r[15] <- 3
r[16] <- 1
r[17] <- 3
r[18] <- 2
r[19] <- 2
mat[0,0] <- "Qual é o nome dado ao estado da água em forma de gelo"      // Questoes
mat[0,1] <- "1 - Liquido"
mat[0,2] <- "2 - Solido"
mat[0,3] <- "3 - Gasoso"
mat[0,4] <- "4 - Vaporoso"
mat[1,0] <- "Quem é a namorada do Mickey?"
mat[1,1] <- "1 - Margarida"
mat[1,2] <- "2 - Minnie"
mat[1,3] <- "3 - A pequena sereia"
mat[1,4] <- "4 - Pluto"
mat[2,0] <- "Quando é comemorado o dia da independência do Brasil?"
mat[2,1] <- "1 - 21 de Abril"
mat[2,2] <- "2 - 12 de outubro"
mat[2,3] <- "3 - 7 de setembro"
mat[2,4] <- "4 - 25 de dezembro"
mat[3,0] <- "Quem tem por lema a frase:“Sempre alerta”?"
mat[3,1] <- "1 - Médicos"
mat[3,2] <- "2 - Escoteiros"
mat[3,3] <- "3 - Bombeiros"
mat[3,4] <- "4 - Policiais"
mat[4,0] <- "Quantos dias tem um ano bissexto?"
mat[4,1] <- "1 - 364"
mat[4,2] <- "2 - 365"
mat[4,3] <- "3 - 366"
mat[4,4] <- "4 - 367"
mat[5,0] <- "O rio Amazonas pertence a qual continente?"
mat[5,1] <- "1 - Americano"
mat[5,2] <- "2 - Africano"
mat[5,3] <- "3 - Europeu"
mat[5,4] <- "4 - Asiático"
mat[6,0] <- "Um adulto sadio tem quantos dentes na boca?"
mat[6,1] <- "1 - 18"
mat[6,2] <- "2 - 24"
mat[6,3] <- "3 - 32"
mat[6,4] <- "4 - 36"
mat[7,0] <- "Qual dos sete anões usa óculos?"
mat[7,1] <- "1 - Dunga"
mat[7,2] <- "2 - Zangado"
mat[7,3] <- "3 - Dengoso"
mat[7,4] <- "4 - Mestre"
mat[8,0] <- "Turmalina é uma espécie de quê?"
mat[8,1] <- "1 - Flor"
mat[8,2] <- "2 - Fruto"
mat[8,3] <- "3 - Pedra"
mat[8,4] <- "4 - Verdura"
mat[9,0] <- "Qual foi o nome dado ao movimento liderado por Tiradentes?"
mat[9,1] <- "1 - Revolução  Francesa"
mat[9,2] <- "2 - Guerra dos emboabas"
mat[9,3] <- "3 - Inconfidência mineira"
mat[9,4] <- "4 - Segunda Guerra Mundial"
mat[10,0] <- "Quantos titulares possui uma equipe de vôlei??"
mat[10,1] <- "1 - Cinco"
mat[10,2] <- "2 - Seis"
mat[10,3] <- "3 - Sete"
mat[10,4] <- "4 - Oito"
mat[11,0] <- "Em qual país surgiu a máfia?"
mat[11,1] <- "1 - Estados Unidos"
mat[11,2] <- "2 - Inglaterra"
mat[11,3] <- "3 - Itália"
mat[11,4] <- "4 - Espanha"
mat[12,0] <- "Fernando Henrique Cardoso é formado em que área?"
mat[12,1] <- "1 - Administração"
mat[12,2] <- "2 - Economia"
mat[12,3] <- "3 - Direito"
mat[12,4] <- "4 - Sociologia"
mat[13,0] <- "Quem inventou o telefone?"
mat[13,1] <- "1 - Grahm Bell"
mat[13,2] <- "2 - George Washington"
mat[13,3] <- "3 - Thomas Edison"
mat[13,4] <- "4 - Marconi"
mat[14,0] <- "Qual é a cor da pedra rubi?"
mat[14,1] <- "1 - Azul"
mat[14,2] <- "2 - Verde"
mat[14,3] <- "3 - Amarela"
mat[14,4] <- "4 - Vermelha"
mat[15,0] <- "Como Joana d‘Arc foi morta?"
mat[15,1] <- "1 - Enforcada"
mat[15,2] <- "2 - Afogada"
mat[15,3] <- "3 - Queimada"
mat[15,4] <- "4 - Asfixiada"
mat[16,0] <- "Quem foi o técnico da Seleção Brasileira de futebol na Copa de 98?"
mat[16,1] <- "1 - Zagallo"
mat[16,2] <- "2 - Scolari"
mat[16,3] <- "3 - Luxemburgo"
mat[16,4] <- "4 - Carpegiani"
mat[17,0] <- "Quem fundou a Microsoft?"
mat[17,1] <- "1 - Sultão de Brunei"
mat[17,2] <- "2 - Akio Morita"
mat[17,3] <- "3 - Bill Gates"
mat[17,4] <- "4 - Príncipe Charles"
mat[18,0] <- "Como se chama o lugar onde são armazenadas as balas de um revólver?"
mat[18,1] <- "1 - Cano"
mat[18,2] <- "2 - Tambor"
mat[18,3] <- "3 - Agulha"
mat[18,4] <- "4 - Gatilho"
mat[19,0] <- "Qual foi o placar no final da Copa de 98, quando o Brasil perdeu para a França?"
mat[19,1] <- "1 - Dois a Zero"
mat[19,2] <- "2 - Três a Zero"
mat[19,3] <- "3 - Quatro a Zero"
mat[19,4] <- "4 - Cinco a Zero"
fimprocedimento
procedimento carregarmedio ()   // Carrega as questoes de nivel medio
inicio
qtdajuda <-2
qtdpulo <- 2
r[0] <- 2   // Respostas
r[1] <- 4
r[2] <- 3
r[3] <- 3
r[4] <- 1
r[5] <- 3
r[6] <- 3
r[7] <- 2
r[8] <- 3
r[9] <- 1
r[10] <- 1
r[11] <- 1
r[12] <- 3
r[13] <- 1
r[14] <- 1
r[15] <- 4
r[16] <- 1
r[17] <- 3
r[18] <- 1
r[19] <- 4
mat[0,0] <- "Que imperador pôs fogo em Roma? "    // Questoes
mat[0,1] <- "1 - Trajano"
mat[0,2] <- "2 - Nero"
mat[0,3] <- "3 - Brutus"
mat[0,4] <- "4 - Calígula"
mat[1,0] <- "Como é chamado quem nasce em Milão, na Itália? "
mat[1,1] <- "1 - Milanense"
mat[1,2] <- "2 - Milanoso"
mat[1,3] <- "3 - Milista"
mat[1,4] <- "4 - Milanês"
mat[2,0] <- "Em qual estádio Pelé marcou seu milésimo gol? ")
mat[2,1] <- "1 - Morumbi"
mat[2,2] <- "2 - Pacaembu"
mat[2,3] <- "3 - Maracanã"
mat[2,4] <- "4 - Mineirão"
mat[3,0] <- "O que é um oboé? "
mat[3,1] <- "1 - Vulcão"
mat[3,2] <- "2 - Comida"
mat[3,3] <- "3 - Instrumento Musical"
mat[3,4] <- "4 - Tribo Indígena"
mat[4,0] <- "Que rio corta a cidade de Londres, na Inglaterra? "
mat[4,1] <- "1 - Tâmisa"
mat[4,2] <- "2 - Sena"
mat[4,3] <- "3 - Reno"
mat[4,4] <- "4 - Aube"
mat[5,0] <- "Quantos quilates tem o ouro puro? "
mat[5,1] <- "1 - 18"
mat[5,2] <- "2 - 20"
mat[5,3] <- "3 - 24"
mat[5,4] <- "4 - 30"
mat[6,0] <- "De quantos em quantos anos aparece o cometa Halley? "
mat[6,1] <- "1 - 57 Anos"
mat[6,2] <- "2 - 67 Anos"
mat[6,3] <- "3 - 76 Anos"
mat[6,4] <- "4 - 79 Anos"
mat[7,0] <- "Segundo a crença popular, a mula-sem-cabeça é mulher de quem? "
mat[7,1] <- "1 - Do coroinha"
mat[7,2] <- "2 - Do padre"
mat[7,3] <- "3 - Do sacristão"
mat[7,4] <- "4 - Do bispo"
mat[8,0] <- "Como é chamada a doença que causa perda desigual da melanina? "
mat[8,1] <- "1 - Astigmatismo"
mat[8,2] <- "2 - Tendinite"
mat[8,3] <- "3 - Vitiligo"
mat[8,4] <- "4 - Vitinga"
mat[9,0] <- "Quem pintou o quadro “La Gioconda”, conhecido como “Mona Lisa”? "
mat[9,1] <- "1 - Leonardo da Vinci"
mat[9,2] <- "2 - Ticiano"
mat[9,3] <- "3 - Rafaelo"
mat[9,4] <- "4 - Michelangelo"
mat[10,0] <- "Em que cidade está situada a famosa Praça Vermelha? "
mat[10,1] <- "1 - Moscou"
mat[10,2] <- "2 - Berlim"
mat[10,3] <- "3 - Paris"
mat[10,4] <- "4 - Roma"
mat[11,0] <- "Quando começou e terminou a Primeira Guerra Mundial? "
mat[11,1] <- "1 - 1914-1919"
mat[11,2] <- "2 - 1939-1945"
mat[11,3] <- "3 - 1921-1932"
mat[11,4] <- "4 - 1912-1915"
mat[12,0] <- "Quem introduziu o futebol no Brasil? "
mat[12,1] <- "1 - Pele"
mat[12,2] <- "2 - Joao Havelange"
mat[12,3] <- "3 - Charles Miller"
mat[12,4] <- "4 - Paulo Machado"
mat[13,0] <- "Nova Délhi é a capital de que país? "
mat[13,1] <- "1 - Índia"
mat[13,2] <- "2 - Islândia"
mat[13,3] <- "3 - Paquistão"
mat[13,4] <- "4 - México"
mat[14,0] <- "Quem disse a frase: “Vim, vi e venci”? "
mat[14,1] <- "1 - Júlio Cesar"
mat[14,2] <- "2 - Calígula"
mat[14,3] <- "3 - Nero"
mat[14,4] <- "4 - Marco Antônio"
mat[15,0] <- "Qual é o país que participou de todas as copas do mundo de futebol, até 1998? "
mat[15,1] <- "1 - Itália"
mat[15,2] <- "2 - Uruguai"
mat[15,3] <- "3 - Argentina"
mat[15,4] <- "4 - Brasil"
mat[16,0] <- "Quais são os naipes vermelhos do baralho? "
mat[16,1] <- "1 - Ouros e Copas"
mat[16,2] <- "2 - Copas e Paus"
mat[16,3] <- "3 - Paus e Ouros"
mat[16,4] <- "4 - Espadas e Paus"
mat[17,0] <- "Em que estado norte-americano fica a cidade de Miami? "
mat[17,1] <- "1 - Alasca"
mat[17,2] <- "2 - Nova York"
mat[17,3] <- "3 - Florida"
mat[17,4] <- "4 - Califórnia"
mat[18,0] <- "Qual presidente dos Estados Unidos foi ator de cinema? "
mat[18,1] <- "1 - Ronald Reagan"
mat[18,2] <- "2 - George Bush"
mat[18,3] <- "3 - Richard Nixon"
mat[18,4] <- "4 - Bill Clinton"
mat[19,0] <- "Qual dessas cobras não é venenosa? "
mat[19,1] <- "1 - Urutu"
mat[19,2] <- "2 - Cascavel"
mat[19,3] <- "3 - Jararaca"
mat[19,4] <- "4 - Piton"
fimprocedimento
procedimento carregardificil ()  // Carregas as questoes de nivel dificil
inicio
qtdajuda <-1
qtdpulo <- 1
r[0] <- 4  // Respostas
r[1] <- 2
r[2] <- 3
r[3] <- 2
r[4] <- 2
r[5] <- 2
r[6] <- 3
r[7] <- 2
r[8] <- 4
r[9] <- 4
r[10] <- 4
r[11] <- 1
r[12] <- 1
r[13] <- 1
r[14] <- 3
r[15] <- 2
r[16] <- 3
r[17] <- 3
r[18] <- 1
r[19] <- 3
mat[0,0] <-	"Qual desses países não fica na Ásia?"        // Questoes
mat[0,1] <-	"1 - Paquistão"
mat[0,2] <-	"2 - Japão"
mat[0,3] <-	"3 - Tailândia"
mat[0,4] <-	"4 - Egito"
mat[1,0] <-	"Onde foi conduzida a vitória das forças aliadas na Segunda Guerra Mundial?"
mat[1,1] <-	"1 - Cannes"
mat[1,2] <-	"2 - Normandia"
mat[1,3] <-	"3 - Capri"
mat[1,4] <-	"4 - Marselha"
mat[2,0] <-	"O que significa literalmente Perestroika?"
mat[2,1] <-	"1 - Conversão"
mat[2,2] <-	"2 - Involução"
mat[2,3] <-	"3 - Reestruturação"
mat[2,4] <-	"4 - Regressão"
mat[3,0] <-	"Qual desses quatro pesos é o mais leve?"
mat[3,1] <-	"1 - 10 Onças"
mat[3,2] <-	"2 - 10 Gramas"
mat[3,3] <-	"3 - 10 Quilos"
mat[3,4] <-	"4 - 10 Libras"
mat[4,0] <-	"Os nazistas foram julgados em:"
mat[4,1] <-	"1 - Berlim"
mat[4,2] <-	"2 - Nuremberg"
mat[4,3] <-	"3 - Munique"
mat[4,4] <-	"4 - Paris"
mat[5,0] <-	"Qual foi o último presidente militar do Brasil?"
mat[5,1] <-	"1 - Fernando Collor"
mat[5,2] <-	"2 - Joao Figueiredo"
mat[5,3] <-	"3 - Tancredo Neves"
mat[5,4] <-	"4 - João Goulart"
mat[6,0] <-	"Qual o símbolo químico do radônio?"
mat[6,1] <-	"1 - Rr"
mat[6,2] <-	"2 - Rd"
mat[6,3] <-	"3 - Rn"
mat[6,4] <-	"4 - Ro"
mat[7,0] <-	"A Bélgica é:"
mat[7,1] <-	"1 - Uma Republica"
mat[7,2] <-	"2 - Uma Monarquia Constitucional"
mat[7,3] <-	"3 - Um Emirado"
mat[7,4] <-	"4 - Um Pricipado"
mat[8,0] <-	"De quem é este verso: “A praça é do povo, como o céu é do condor”?"
mat[8,1] <-	"1 - Tobias Barreto"
mat[8,2] <-	"2 - Dorival Caimi"
mat[8,3] <-	"3 - Machado de Assis"
mat[8,4] <-	"4 - Castro Alves"
mat[9,0] <-	"De quem é a frase ”Penso, logo existo”?"
mat[9,1] <-	"1 - Platão"
mat[9,2] <-	"2 - Júlio Verne"
mat[9,3] <-	"3 - Aristóteles"
mat[9,4] <-	"4 - Rene descartes"
mat[10,0] <- "Quem construiu o primeiro telescópio astronômico completo?"
mat[10,1] <- "1 - Cyrus Mccormick"
mat[10,2] <- "2 - Thomas Edison"
mat[10,3] <- "3 - Michelangelo"
mat[10,4] <- "4 - Galileu Galilei"
mat[11,0] <- "Em que parte do nosso corpo está o úmero?"
mat[11,1] <- "1 - Braço"
mat[11,2] <- "2 - Perna"
mat[11,3] <- "3 - Quadril"
mat[11,4] <- "4 - Coluna"
mat[12,0] <- "Qual o nome verdadeiro do jogador de futebol conhecido com Zico?"
mat[12,1] <- "1 - Arthur Antunes Coimbra"
mat[12,2] <- "2 - Arthur Alves Pinto"
mat[12,3] <- "3 - Arthur da Távola"
mat[12,4] <- "4 - Arthur dos Santos"
mat[13,0] <- "Qual foi o material utilizado na construção do Partenon de Atenas?"
mat[13,1] <- "1 - Mármore"
mat[13,2] <- "2 - Granito"
mat[13,3] <- "3 - Gesso"
mat[13,4] <- "4 - Quartzo"
mat[14,0] <- "Quem foi aluno de Platão e tutor de Alexandre, o Grande?"
mat[14,1] <- "1 - Pitágoras"
mat[14,2] <- "2 - Diderot"
mat[14,3] <- "3 - Aristóteles"
mat[14,4] <- "4 - Galileu Galilei"
mat[15,0] <- "Em que ano foi inaugurada a estátua do Cristo Redentor no Rio de Janeiro?"
mat[15,1] <- "jan/21"
mat[15,2] <- "fev/31"
mat[15,3] <- "mar/41"
mat[15,4] <- "abr/51"
mat[16,0] <- "O que é talude?"
mat[16,1] <- "1 - Avalanche de Neve"
mat[16,2] <- "2 - Fungo"
mat[16,3] <- "3 - Inclinação do terreno"
mat[16,4] <- "4 - Rito islâmico"
mat[17,0] <- "Qual metal possui o símbolo Hg?"
mat[17,1] <- "1 - Ferro"
mat[17,2] <- "2 - Aço"
mat[17,3] <- "3 - Mercúrio"
mat[17,4] <- "4 - Ouro"
mat[18,0] <- "Qual é a altura oficial do aro na cesta no basquete?"
mat[18,1] <- "1 - 3,05 Metros"
mat[18,2] <- "2 - 2,97 Metros"
mat[18,3] <- "3 - 3,10 Metros"
mat[18,4] <- "4 - 3,00 Metros"
mat[19,0] <- "Como o rei francês Luís XVI e sua esposa Maria Antonieta morreram?"
mat[19,1] <- "1 - Enforcados"
mat[19,2] <- "2 - Fuzilados"
mat[19,3] <- "3 - Guilhotinados"
mat[19,4] <- "4 - Queimados"
fimprocedimento
procedimento perguntamilhao ()
inicio
qtdajuda <-0
qtdpulo <- 0
r[0] <- 2  // Respostas
r[1] <- 3
r[2] <- 4
r[3] <- 3
r[4] <- 3
mat[0,0] <-	"Quantas perguntas você respondeu ate chegar aqui?"        // Questoes
mat[0,1] <-	"1 - 10"
mat[0,2] <-	"2 - 9"
mat[0,3] <-	"3 - 8"
mat[0,4] <-	"4 - 7"
mat[1,0] <-	"Qual e o nome do real do Silvio Santos?"
mat[1,1] <-	"1 - Sennor Abravanel"
mat[1,2] <-	"2 - Senor Abravannel"
mat[1,3] <-	"3 - Senor Abravanel"
mat[1,4] <-	"4 - Sennor Abravnnel"
mat[2,0] <-	"Qual a idade do planeta terra?"
mat[2,1] <-	"1 - 3,127 × 10^9 anos"
mat[2,2] <-	"2 - 4,543 × 9^10 anos"
mat[2,3] <-	"3 - 3,127 × 10^9 anos"
mat[2,4] <-	"4 - 4,543 × 10^9 anos"
mat[3,0] <-	"Quantos números  9 existe entre 0 a 100?"
mat[3,1] <-	"1 - 10"
mat[3,2] <-	"2 - 11"
mat[3,3] <-	"3 - 20"
mat[3,4] <-	"4 - 21"
mat[4,0] <-	"Se 1 é o número 3,2 é o número 1 e 4 é o número 3 então 2 é o número?"
mat[4,1] <-	"1 - 3"
mat[4,2] <-	"2 - 4"
mat[4,3] <-	"3 - 1"
mat[4,4] <-	"4 - 2"
fimprocedimento
procedimento usarajuda () //Procedimento chamado quando a pessoa solicita ajuda digitando 5
inicio
        limpatela
        se (qtdajuda > 0) entao // Necessário possuir ajuda para iniciar
            qtdajuda <- qtdajuda -1 // Reduz em 1 a ajuda
            repita
                  enquanto (ajuda = 0) ou (ajuda = vet1[1]) ou (ajuda = vet1[2]) ou (ajuda = vet1[3]) ou (ajuda = vet1[4]) ou (ajuda = vet1[5]) ou (ajuda = vet1[6]) ou (ajuda = vet1[7]) ou (ajuda = vet1[8]) ou (ajuda = vet1[9]) ou (ajuda = vet1[10]) faca
                     ajuda <- randi(5)  // Acima são vetores que serão preenchidos e comparados para não repetir
                  fimenquanto
               cont2 <- cont2 +1  // Incrementa o vetor
               vet1[cont2] <- ajuda
            ate ((ajuda <> r[res]) e (ajuda > 0))  // O valor não pode ser igual a resposta e nem zero
          mat[random,ajuda] <- " "   // Altera a alternativa errada para não exibi-la
          escreval ("-------------------------------------------------------------------------------------")
          escreval ("                        A questão ",ajuda," esta errada")
          escreval ("-------------------------------------------------------------------------------------")
          timer 500    // Tempo para leitura da informação
          escreval ("")
          timer 0
        senao
          escreval ("-------------------------------------------------------------------------------------")
          escreval ("                      **Voce não possui ajuda suficiente**")
          escreval ("-------------------------------------------------------------------------------------")
          timer 500 // Informa que a pessoa não tem mais ajuda
          escreval ("")
          timer 0
        fimse
fimprocedimento
procedimento usarpulo () // Usado caso a pessoa solicite "pular" opção 6
inicio                   // Não pula a questão nesse procedimento, ao entrar no procedimento "chamarquestao" sera utilizado
        limpatela
        se (qtdpulo = 0) entao  // Necessario possuir pulo para iniciar
             escreval ("-------------------------------------------------------------------------------------")
             escreval ("                      **Voce não possui pulo suficiente**")
             escreval ("-------------------------------------------------------------------------------------")
             timer 500 // Informa que a pessoa não tem mais ajuda
             escreval ("")
             timer 0
        fimse
fimprocedimento
procedimento barraopcao () // Mostra o status atual de pontos caso perca, pare ou acerte. Tambem quantidade de pulos e ajuda juntamente com os comandos.
inicio
escreval ("+---------------------+-------------------+------------------+------------------+")
escreval ("|Ajudas restantes = ",qtdajuda,"| Ajuda: Aperte 5   | Parar: Aperte 6  | Pular: Aperte 7  |")
escreval ("+---------------------+-------------------+------------------+------------------+")
escreval ("|Pulos restantes  = ",qtdpulo,   "| ERRAR = ",pontos/2:3:3," PARAR = ",pontos:3:3," ACERTAR = ",pontos + 100:3:3)
escreval ("+---------------------+---------------------------------------------------------+")
fimprocedimento
procedimento chamarquestao ()  // Usado para chamar as questões e tambem pular elas.
inicio
se ((resp > 0) e (resp < 5)) ou ((resp = 7) e (qtdpulo > 0))entao // Se a pergunta for um numero valido fora dos auxilios || Se a questão for pular efetivara esse procedimento se não passara direto
   se resp = 7 entao
      qtdpulo <- qtdpulo -1 // Reduz em 1 os pulos
   fimse
 enquanto (random = vet[0]) ou (random = vet[1]) ou (random = vet[2]) ou (random = vet[3]) ou (random = vet[4]) ou (random = vet[5]) ou (random = vet[6]) ou (random = vet[7]) ou (random = vet[8]) ou (random = vet[9]) ou (random = vet[10]) ou (random = vet[11]) ou (random = vet[12]) ou (random = vet[13]) ou (random = vet[14]) ou (random = vet[15]) ou (random = vet[16]) ou (random = vet[17]) ou (random = vet[18]) ou (random = vet[19]) faca
   random <- randi (20) // Acima são vetores que serão preenchidos e comparados para não repetir
   res <- random       // random só sai enquanto tiver um numero que não foi preenchido.
 fimenquanto
   vet[cont] <- random   // Preenche os vetores com perguntas já selecionadas
   cont <- cont +1
fimse
 para i de 0 ate 4 faca
     escreval (mat[random,i]) // Escreve sequencialmente as alternativas da matriz "Padrao: 0 - Questao 1,2,3,4 - Alternativas"
 fimpara
fimprocedimento
inicio
animacao  // Carrega a animação inicial
menuinicial <- 1    // Recebe valor para entrar no loop.
enquanto menuinicial <> 0 faca
   intro // Carrega o layout da inicio
   escreval ("Bem vindo ao jogo Show do Milhão escolha a opção desejada:")
   escreval ("1 - Jogar")
   escreval ("2 - Ajuda")
   escreval ("3 - Sobre o Jogo")
   escreval ("0 - Sair")
   leia (menuinicial)
   limpatela
   escolha menuinicial
        caso 1
          enquanto ((menuquiz <> 1) e (menuquiz <> 2) e (menuquiz <> 3)) faca
             limpatela
             intro   // Carrega o layout da inicio
             escreval ("Escolha o nível desejado:")
             escreval ("1 - Fácil")
             escreval ("2 - Médio")
             escreval ("3 - Difícil")
             leia (menuquiz)
             se menuquiz = 1 entao
                carregarfacil   // Carrega as questões fáceis
             fimse
             se menuquiz = 2 entao
                carregarmedio     // Carrega as questões médias
             fimse
             se menuquiz = 3 entao
                carregardificil   // Carrega as questões difíceis
             fimse
             se (menuquiz > 3) ou (menuquiz < 1) entao // identifica opções invalidas
                limpatela
                escreval ("-------------------------------------------------------------------------------------")
                escreval ("                               **COMANDO INVÁLIDO**")
                escreval ("-------------------------------------------------------------------------------------")
                timer 500
                escreval ("")
                timer 0
                limpatela
             fimse
          fimenquanto
         limpatela
         intro
         escreval ("Digite seu nome:") // Recebe o nome do jogador
         leia (nome)
         repita
             loop <- 0    // Zera os contadores
             resp <- 1    // Zera os contadores
             cont2 <- 0   // Zera os contadores
             para u de 0 ate 4 faca
                 vet1[u] <- 0  // Zera os contadores
             fimpara
             limpatela
             enquanto loop <> 1 faca
                      limpatela
                  introq  //Carrega a imagem do silvio
                  chamarquestao // Carrega a próxima pergunta
                  barraopcao   // Carrega a barra embaixo do menu
                  Escreval ("Digite sua resposta")
                  leia (resp)
                     se resp = 5 entao
                          usarajuda   //Usa o menu de ajuda e apaga uma questão
                     fimse
                     se resp = 6 entao
                          escreval ("Você quer largar o ouro ", nome, "? (SIM) ou (NAO)")
                          leia (certeza)
                             se certeza = "sim" entao
                               desistiu  // Apresenta a tela de desistencia
                               senao
                               limpatela // Limpa a tela para o loop
                             fimse
                     fimse
                     se resp = 7 entao
                               usarpulo  // Usa o menu de pulo e pula uma questao
                     fimse
                     se ((resp > 0) e (resp < 5)) entao  // somente 1 2 3 4 pois são as alternativas
                        se resp = r[res] entao
                           loop <- 1 // Chava para sair da repetição
                           limpatela
                           escreval ("-------------------------------------------------------------------------------------")
                           escreval ("                 **Certa Resposta, Vamos para próxima pergunta...**")
                           escreval ("-------------------------------------------------------------------------------------")
                           timer 500
                           escreval ("")
                           timer 0
                           pontos <- pontos + 100:3:3
                           limpatela
                        senao
                           perdeu  // Apresenta a tela de perdeu
                        fimse
                     fimse
             fimenquanto
             cont1 <- cont1 +1
        ate cont1 = 9 // Quantidades de perguntas a ser respondidas
   perguntamilhao // Carrega a questao do milhão
   resp <- 1  // define resp para sair do loop
   enquanto (loop <> 2) faca
     questaovitoria
       se loop = 1 entao  // para não randomizar a pergunta depois que sair
         random <- randi (4)
         loop <- 0
       fimse
     res <- random
     para i de 0 ate 4 faca
       escreval (mat[random,i])
     fimpara
     leia (resp)
     se ((resp > 0) e (resp < 5)) entao // Só aceita respostas validas
        se resp = r[res] entao
           vitoria
        senao
           perdeutudo
        fimse
     senão
        escreval ("-------------------------------------------------------------------------------------")
        escreval ("                               **COMANDO INVÁLIDO**")
        escreval ("-------------------------------------------------------------------------------------")
        timer 500
        escreval ("")
        timer 0
     fimse
limpatela
fimenquanto
   caso 2
         limpatela
         outro <- 1
         enquanto outro <> 0 faca   // Mostra o menu de ajuda ao usuario
            limpatela
            escreval ("O objetivo é acertar todas perguntas até chegar em 1 milhao de reais")
            escreval ("  ")
            escreval ("Comandos:       (1)(2)(3)(4) = Respostas: Seleciona uma resposta")
            escreval ("                (5) = Ajuda: Elimina uma resposta incorreta ")
            escreval ("                (6) = Parar: Desiste ganhando uma quantia em dinheiro")
            escreval ("                (7) = Pular: Pula uma pergunta, não acrescentando valores")
            escreval ("  ")
            escreval ("Digite 0 (Zero) para sair")
            leia (outro)
         fimenquanto
         limpatela
   caso 3
         outro <- 1
         enquanto outro <> 0 faca  // Mostra o menu de informação
            limpatela
            escreval ("Show Do Milhão - v4.0")
            escreval ("")
            escreval ("Desenvolvedor:     Jhony Lara")
            escreval ("")
            escreval ("Agradecimentos:    Patricia Rozek ")
            escreval ("                   Miguel Degharras ")
            escreval ("                   Lucas Sales ")
            escreval ("                   Alisson Labres ")
            escreval ("                   Thomas Augusto ")
            escreval ("                   Prof. Luciene Kanashiro")
            escreval ("                   Frof. Charles Fung")
            escreval ("")
            escreval ("Direitos autorais: TVSBT CANAL 4 de SÃO PAULO S.A. ")
            escreval ("Perguntas retiradas do livro: Show do Milhão. — São Paulo : Nobel, 2001.")
            escreval ("")
            escreval ("Digite 0 (Zero) para sair")
            leia (outro)
          fimenquanto
          limpatela
          caso 0
             escreval ("-------------------------------------------------------------------------------------")
             escreval ("                                **ATÉ A PRÓXIMA**")
             escreval ("-------------------------------------------------------------------------------------")
   outrocaso
             escreval ("-------------------------------------------------------------------------------------")
             escreval ("                               **COMANDO INVÁLIDO**")
             escreval ("-------------------------------------------------------------------------------------")
             timer 500
             escreval ("")
             timer 0
             limpatela
   fimescolha
 fimenquanto
fimalgoritmo
