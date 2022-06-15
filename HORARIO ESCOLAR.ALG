algoritmo "Horario"
// Tech Core School
// Disciplina   : [Introdu็ใo a Logica de Programa็ใo]
// Professor   : Eng Covane

var  // Variaveis e seus tipos
cont_horario, nov, cont2, resp, resp2, cont, opcao, cat, horarios, conta, alt,cont_login: inteiro
resposta, titulo_inserir, sittuacao, pesq, Tent_U, Tent_S, senha_c,tecla, feedback, tec: caracter
logi, titulo_repetido, login_usuario, login_senha, vet, lencontrado: logico
usuario: vetor [1..10] de caracter
docente: vetor [1..10] de caracter
senha: vetor [1..10] de caracter
nome: vetor [1..10] de caracter
titulo: vetor [1..10] de caracter
email: vetor [1..10] de caracter
horario: vetor [1..10] de caracter
nascimento: vetor [1..10] de caracter
tip: vetor [1..10] de inteiro
categoria: vetor [1..10] de caracter
ano: vetor [1..10] de inteiro
situacao : vetor [1..10] de logico
cod: vetor [1..10] de inteiro
msg: vetor [1..10] de caracter
assunto: vetor [1..10] de caracter
nome_assunto: vetor [1..10] de caracter
email_assunto: vetor [1..10] de caracter
dia: vetor [1..10] de caracter
mes: vetor [1..10] de caracter
ano_nasc: vetor [1..10] de caracter
procedimento inicial   //Menu Login
inicio
escreval ("             [ Tech Core School - 2022 ]")
escreval ("             ~~~~~~~~~~~~")
escreval ("")
escreval ("1. Login")
escreval ("")
escreval ("2. Cadastro")
leia (resp)

escolha resp
caso 1
   limpatela
   login

caso 2
   limpatela
   cadastro
fimescolha
fimprocedimento


procedimento login
inicio
escreval ("           [ Tech Core School - 2022 ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("               [ LOGIN ]")
escreval ("")
escreval ("Nome de Usuแrio: ")
leia (Tent_U)
escreval ("")
escreval ("Senha: ")
leia (Tent_S)

verificacao

limpatela

se login_usuario = falso entao
   escreval ("           ~~~~~~~~~~~~~~~~~~~~~")
   escreval ("")
   escreval("             Nome de incorrecto!")
   escreval ("           ~~~~~~~~~~~~~~~~~~~~~")
   escreval ("")
fimse

se (login_usuario = verdadeiro) e (login_senha = falso) entao
   escreval ("           ~~~~~~~~~~~~~~~~~~~~~")
   escreval ("")
   escreval("               Senha incorrecta!")
   escreval ("           ~~~~~~~~~~~~~~~~~~~~~")
   escreval ("")
fimse

se (login_usuario = verdadeiro) e (login_senha = verdadeiro) entao

   limpatela
   se tip[cont_login] = 2 entao
      Admin
   senao
      boasvindas
   fimse

fimse

login
fimprocedimento

procedimento verificacao  //
inicio

login_usuario <- falso
login_senha <- falso

para cont de 1 ate 10 faca
   se Tent_U = usuario[cont] entao
      login_usuario <- verdadeiro
      se Tent_S = senha[cont] entao
         login_senha <- verdadeiro
         cont_login<-cont
         interrompa
      fimse
   fimse
fimpara
fimprocedimento

procedimento cadastro //cadastro de usuarios
inicio
para cont de 1 ate 10 faca
   se usuario[cont] = ""  entao
      vet <- falso
      escreval ("             [ Tech Core School - 2022 ]")
      escreval ("             ~~~~~~~~~~~~~")
      escreval ("             [ CADASTRO ]")
      escreval ("")
      escreval ("Nome Completo:")
      leia (nome[cont])
      escreval ("")
      escreval ("Nome de Usuแrio:")
      leia (usuario[cont])
      escreval ("")
      repita
         escreval ("Email (nome@email.com): ")
         leia (email[cont])

         se pos("@",email[cont]) =0 entao
            escreval ("ATENวรO! Email invแlido!")
            escreval ("")
         fimse
      ate pos("@", email[cont]) <>0

      escreval ("")
      repita
         escreval ("Data de Nascimento (DDMMAAAA): ")
         leia (nascimento[cont])
         se compr(nascimento[cont-]) <> 8 entao
         escreval ("")
            escreval ("ATENวรO! Quantidade de dํgitos invแlida!")
         senao
            dia[cont] <- copia(nascimento[cont], 1, 2)
            mes[cont] <- copia(nascimento[cont], 3, 2)
            ano_nasc[cont] <- copia(nascimento[cont], 5, 4)
         fimse
      ate compr(nascimento[cont])=8
      escreval ("")
      escreval ("Senha: ")
      leia (senha[cont])
      escreval ("")
      escreval ("Confirme sua senha: ")
      leia (senha_c)
      tip[cont] <- 1
      se senha_c <> senha[cont] entao
         senha[cont] <- ("")
         limpatela
         cadastro2

      fimse //Fim do cadastro de usuarios

      interrompa
   senao
      vet<-verdadeiro

   fimse
fimpara

se vet = verdadeiro entao
   escreval("A mem๓ria estแ cheia, favor reiniciar o programa!")
   escreval ("Pressione 'Enter' para retornar ao Login.")
   leia (tecla)
   limpatela
   inicial
senao

   limpatela
   escreval ("             [ Tech Core School - 2022 ]")
   escreval ("             ~~~~~~~~~~~~~")
   escreval ("             [ CADASTRO ]")
   escreval ("")
   escreval ("Usuแrio cadastrado com sucesso!")
   escreval ("Pressione 'Enter' para retornar ao Login.")
   leia (tecla)
   limpatela
   inicial
fimse
fimprocedimento


procedimento cadastro2  //Cadastro de Usuario
inicio
senha[cont]<- ""
repita
   escreval ("             [ Tech Core School - 2022 ]")
   escreval ("             ~~~~~~~~~~~~~")
   escreval ("             [ CADASTRO ]")
   escreval ("")
   escreval ("Nome Completo: ", nome[cont])
   escreval ("")
   escreval ("Nome de Usuแrio: ", usuario[cont])
   escreval ("")
   escreval ("Email (nome@email.com): ", email[cont])
   escreval ("")
   escreval ("Nascimento:", dia[cont], "/", mes[cont], "/", ano_nasc[cont])
   escreval ("")
   escreval ("Senha: ")
   leia (senha[cont])
   escreval ("")
   escreval ("Confirme a sua senha: ")
   leia (senha_c)
ate senha[cont] = senha_c
fimprocedimento //Fim do cadastro

procedimento boasvindas
inicio
se tip[cont_login] = 2 entao
   limpatela
   Admin
fimse

 //Menu Usuario normal
escreval ("             [ Tech Core School - 2022 ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("              [ OLม, ", maiusc(usuario[cont_login]),"]")
escreval ("")
escreval ("1. Minha Conta")
escreval ("2. Meus Horarios")
escreval ("3. Pesquisar")
escreval ("4. Disciplinas")
escreval ("5. Contacto")
escreval ("6. Logout")

leia (opcao)
escolha opcao
caso 1
   limpatela
   minha_conta
caso 2
   limpatela
   meus_horarios
caso 3
   limpatela
   pesquisar
caso 4
   limpatela
   categorias
caso 5
   limpatela
   contacto
caso 6
   limpatela
   inicial
fimescolha
fimprocedimento

procedimento categorias //Cadastro de categorias
inicio
escreval ("        [ Tech Core School - 2022 ]")
escreval ("            ~~~~~~~~~~~~~~")
escreval ("            [ DISCIPLINAS ]")
escreval ("")
escreval ("")
escreval ("Selecione a disciplina que deseja visualizar:")
escreval ("")
escreval ("1. Introdu็ใo a Logica de Programa็ใo")
escreval ("")
escreval ("2. Programa็ใo Web")
escreval ("")
escreval ("3. Programa็ใo Java")
escreval ("")
escreval ("4. Voltar")
leia (cat)
limpatela

escolha cat  // Funcao escolher categoria
caso 1
   Cat_ILP
caso 2
   Cat_Pw
caso 3
   Cat_Pj
caso 4
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento  // Fim da funcao Escolher categoria


procedimento Cat_ILP
inicio
escreval ("                [ Tech Core School - 2022 ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("        [ Introdu็ใo a Logica de Programa็ใo ]")
escreval ("")
escreval ("")
escreval ("                       Turno: Noite                  ")
escreval ("        |จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval ("        | Seg.    |Terc.    |Quar.   |Quin.  |Sex.  |")
escreval ("  ______|จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval (" |17:00 |         |         |        |              |")
escreval (" |18:00 |    X    |         |        |              |")
escreval (" |19:00 |         |         |        |              |")
escreval (" |20:00 |         |         |   X    |              |")
escreval (" |21:00 |         |         |        |              |")
escreval (" |22:00 |         |         |        |              |")
escreval ("  จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ ")
escreval ("")
escreval ("Digite 3. para voltar ou 4. Menu")
leia (horarios)

escolha horarios
caso 1
   limpatela
   Cat_ILP_01
caso 2
   limpatela
   Cat_ILP_02
caso 3
   limpatela
   categorias
caso 4
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento Cat_ILP_01
inicio
escreval ("          [ Tech Core School - 2022 ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("            [ PROGRAMAวรO WEB ]")
escreval ("")
escreval ("")
escreval ("")
escreval ("                       Turno: Noite                  ")
escreval ("        |จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval ("        | Seg.    |Terc.    |Quar.   |Quin.  |Sex.  |")
escreval ("  ______|จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval (" |17:00 |         |         |        |              |")
escreval (" |18:00 |         |         |        |              |")
escreval (" |19:00 |         |         |        |              |")
escreval (" |20:00 |         |         |   X    |              |")
escreval (" |21:00 |         |         |        |              |")
escreval (" |22:00 |         |    x    |        |              |")
escreval ("  จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ ")
escreval ("")
escreval ("")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   download
caso 2
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   Cat_ILP
fimescolha
fimprocedimento

procedimento Cat_ILP_02
inicio
escreval ("           [ Tech Core School - 2022 ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("        [ INTRODUCวรO LำGICA DE PROGRAMCAO ]")
escreval ("")
escreval ("")
escreval ("")
escreval ("                       Turno: Noite                  ")
escreval ("        |จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval ("        | Seg.    |Terc.    |Quar.   |Quin.  |Sex.  |")
escreval ("  ______|จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval (" |17:00 |         |         |        |              |")
escreval (" |18:00 |    X    |         |        |              |")
escreval (" |19:00 |         |         |        |              |")
escreval (" |20:00 |         |         |   X    |              |")
escreval (" |21:00 |         |         |        |              |")
escreval (" |22:00 |         |         |        |              |")
escreval ("  จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ ")
escreval ("")
escreval ("")
escreval ("")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   download
caso 2
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   Cat_ILP
fimescolha
fimprocedimento

procedimento Cat_PW
inicio
escreval ("            [ Tech Core School - 2022]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("            [ PROGRAMAวรO WEB ]")
escreval ("")
escreval ("")
escreval ("")
escreval ("                       Turno: Noite                  ")
escreval ("        |จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval ("        | Seg.    |Terc.    |Quar.   |Quin.  |Sex.  |")
escreval ("  ______|จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval (" |17:00 |         |         |        |              |")
escreval (" |18:00 |    X    |         |        |              |")
escreval (" |19:00 |         |         |        |              |")
escreval (" |20:00 |         |         |   X    |              |")
escreval (" |21:00 |         |         |        |              |")
escreval (" |22:00 |         |         |        |              |")
escreval ("  จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ ")
escreval ("")
escreval ("Digite 3. para voltar e 4. Menu")
leia (horarios)

escolha horarios
caso 1
   limpatela
   Cat_Pw_01
caso 2
   limpatela
   Cat_Pw_02
caso 3
   limpatela
   categorias
caso 4
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento Cat_Pw_01
inicio
escreval ("             [ Tech Core School - 2022 ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("             [ PROGRAMAวรO WEB ]")
escreval ("")
escreval ("")
escreval ("                       Turno: Noite                  ")
escreval ("        |จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval ("        | Seg.    |Terc.    |Quar.   |Quin.  |Sex.  |")
escreval ("  ______|จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval (" |17:00 |         |         |        |              |")
escreval (" |18:00 |    X    |         |        |              |")
escreval (" |19:00 |         |         |        |              |")
escreval (" |20:00 |         |         |   X    |              |")
escreval (" |21:00 |         |         |        |              |")
escreval (" |22:00 |         |         |        |              |")
escreval ("  จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ ")
escreval ("")
escreval ("")
escreval ("")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   download
caso 2
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   Cat_Pw
fimescolha
fimprocedimento


procedimento Cat_PW_02
inicio
escreval ("             [ Tech Core School - 2022 ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("             [ PROGRAMAวรO WEB]")
escreval ("")
escreval ("")
escreval ("                       Turno: Noite                  ")
escreval ("        |จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval ("        | Seg.    |Terc.    |Quar.   |Quin.  |Sex.  |")
escreval ("  ______|จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval (" |17:00 |         |         |        |              |")
escreval (" |18:00 |    X    |         |        |              |")
escreval (" |19:00 |         |         |        |              |")
escreval (" |20:00 |         |         |   X    |              |")
escreval (" |21:00 |         |         |        |              |")
escreval (" |22:00 |         |         |        |              |")
escreval ("  จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ ")
escreval ("")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   download
caso 2
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   Cat_Pw
fimescolha
fimprocedimento

procedimento Cat_Pj
inicio
escreval ("             [ Tech Core School - 2022 ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("                 [ PROGRAMACAO JAVA ]")
escreval ("")
escreval ("")
escreval ("")
escreval ("                      Turno: Noite                  ")
escreval ("        |จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval ("        | Seg.    |Terc.    |Quar.   |Quin.  |Sex.  |")
escreval ("  ______|จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval (" |17:00 |         |         |        |              |")
escreval (" |18:00 |    X    |         |        |              |")
escreval (" |19:00 |         |         |        |              |")
escreval (" |20:00 |         |         |   X    |              |")
escreval (" |21:00 |         |         |        |              |")
escreval (" |22:00 |         |         |        |              |")
escreval ("  จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ ")
escreval ("")
escreval ("Digite 3. para voltar e 4. Menu")
leia (horarios)

escolha horarios
caso 1
   limpatela
   Cat_Pj_01
caso 2
   limpatela
   Cat_Pj_02
caso 3
   limpatela
   categorias
caso 4
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento


procedimento Cat_Pj_01
inicio
escreval ("             [ Tech Core School - 2022 ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("                 [ ROMANCE ]")
escreval ("")
escreval ("")
escreval ("                       Turno: Noite                  ")
escreval ("        |จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval ("        | Seg.    |Terc.    |Quar.   |Quin.  |Sex.  |")
escreval ("  ______|จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval (" |17:00 |         |         |        |              |")
escreval (" |18:00 |    X    |         |        |              |")
escreval (" |19:00 |         |         |        |              |")
escreval (" |20:00 |         |         |   X    |              |")
escreval (" |21:00 |         |         |        |              |")
escreval (" |22:00 |         |         |        |              |")
escreval ("  จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ ")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("1. Download")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   download
caso 2
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   Cat_Pj
fimescolha
fimprocedimento

procedimento Cat_Pj_02
inicio
escreval ("           [ Tech Core School - 2022 ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("             [ PROGRAMACAO JAVA ]")
escreval ("")
escreval ("")
escreval ("                       Turno: Noite                  ")
escreval ("        |จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval ("        | Seg.    |Terc.    |Quar.   |Quin.  |Sex.  |")
escreval ("  ______|จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval (" |17:00 |         |         |        |              |")
escreval (" |18:00 |    X    |         |        |              |")
escreval (" |19:00 |         |         |        |              |")
escreval (" |20:00 |         |         |   X    |              |")
escreval (" |21:00 |         |         |        |              |")
escreval (" |22:00 |         |         |        |              |")
escreval ("  จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ ")
escreval ("")
escreval ("")
escreval ("")
escreval ("1. Download")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   download
caso 2
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   Cat_Rom
fimescolha
fimprocedimento

procedimento meus_dados
inicio

escreval ("Nome de Usuแrio: ",usuario[cont_login])
escreval ("Nome Completo: ",nome[cont_login])
escreval ("Email: ",email[cont_login])
escreval ("Nascimento:", dia[cont_login], "/", mes[cont_login], "/", ano_nasc[cont_login])
escreval ("Senha: ",senha[cont_login])
escreval ("")
interrompa

fimprocedimento

procedimento alterar_pessoais
inicio
escreval ("         [ Tech Core School - 2022 ]")
escreval ("             ~~~~~~~~~~~~~~~~~")
escreval ("           [ DADOS PESSOAIS]")
escreval ("")
escreval ("Seus dados actuais sใo:")
meus_dados
escreval ("")
escreval ("Para alterar:")
escreval ("1. Nome de Usuแrio")
escreval ("2. Nome Completo")
escreval ("3. Email")
escreval ("4. Senha")
escreval ("5. Voltar.")

leia (alt)

escolha alt
caso 1
   limpatela
   escreval ("          [ Tech Core School - 2022 ]")
   escreval ("             ~~~~~~~~~~~~~~~~~")
   escreval ("             [ DADOS PESSOAIS]")
   escreval ("")
   escreval ("Novo nome de usuแrio:")
   leia (usuario[cont_login])

   limpatela
   alterar_pessoais

caso 2
   limpatela
   escreval ("          [ Tech Core School - 2022 ]")
   escreval ("             ~~~~~~~~~~~~~~~~~")
   escreval ("             [ DADOS PESSOAIS]")
   escreval ("")
   escreval ("Novo nome:")
   leia (nome[cont_login])
   limpatela
   alterar_pessoais

caso 3
   limpatela
   escreval ("         [ Tech Core School - 2022 ]")
   escreval ("             ~~~~~~~~~~~~~~~~~")
   escreval ("             [ DADOS PESSOAIS]")
   escreval ("")
   escreval ("Novo email: ")
   leia (email[cont_login])

   limpatela
   alterar_pessoais

caso 4
   limpatela
   escreval ("         [ Tech Core School - 2022 ]")
   escreval ("             ~~~~~~~~~~~~~~~~~")
   escreval ("             [ DADOS PESSOAIS]")
   escreval ("")
   escreval ("Nova senha:")
   leia (senha[cont_login])

   limpatela
   alterar_pessoais

caso 5
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   minha_conta
fimescolha
fimprocedimento


procedimento cancelar
inicio
escreval ("         [ Tech Core School - 2022]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("             [ MINHA CONTA ]")
escreval ("")
escreval ("              Cancelamento")
escreval ("")
escreval ("Antes de nos deixar, nos envie um feedback: ")
leia (feedback)
escreval ("")
escreval ("Pressione 'Esc' para sair.")

fimprocedimento

procedimento minha_conta
inicio

escreval ("        [ Tech Core School - 2022 ]")
escreval ("             ~~~~~~~~~~~~~~~")
escreval ("             [ MINHA CONTA ]")
escreval ("")
escreval ("1. Dados pessoais")
escreval ("2. Horarios")
escreval ("3. Cancelar conta")
escreval ("4. Menu")
leia (conta)

escolha conta
caso 1
   limpatela
   alterar_pessoais
caso 2
   limpatela
   pgto
caso 3
   limpatela
   cancelar
caso 4
   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento meus_horarios
inicio
escreval ("            [ Tech Core School - 2022 ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("                [ MEUS HORARIOS ]")
escreval ("")
escreval ("")
escreval ("")
escreval ("1. |จจจจจจจจจจจจจจจ|     2. |จจจจจจจจจจจจจ|     3. |จจจจจจจจจจจจจจ|")
escreval ("   |  Introdu็ใo   |        |             |        |              |")
escreval ("   |  a Logica de  |        | Programa็ใo |        |  Programa็ใo |")
escreval ("   |  Programa็ใo  |        |    Web      |        |     Jave     |")
escreval ("   |               |        |             |        |              |")
escreval ("   |   Docente     |        |             |        |              |")
escreval ("   | Eng. Covane   |        | Dr. Comiche |        |   Eng. Fumo  |")
escreval ("   |______________ |        |_____________|        |______________|")
escreval ("")
escreval ("Selecione a displina ou 4- para voltar: ")
leia (horarios)

escolha horarios
caso 1
   cont_horario <- 2
   limpatela

   Meus_Horarios_01
caso 2
   cont_horario <- 6
   limpatela

   Meus_Horarios_02
caso 3
   cont_horario <- 4
   limpatela
   Meus_Horarios_03
outrocaso
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento Meus_Horarios_01
inicio
escreval ("             [ Tech Core School - 2022 ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("                [ MEUS HORARIOS ]")
escreval ("")
escreval ("")
escreval ("               |จจจจจจจจจจจจจจจ|")
escreval ("               |  Introdu็ใo   |")
escreval ("               |  a Logica de  |")
escreval ("               |  Programa็ใo  |")
escreval ("               |               |")
escreval ("               |   Docente     |")
escreval ("               | Eng. Covane   |")
escreval ("               |_______________|")
escreval ("")
escreval ("")
escreval ("        |จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval ("        | Seg.    |Terc.    |Quar.   |Quin.  |Sex.  |")
escreval ("  ______|จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval (" |17:00 |         |         |        |              |")
escreval (" |18:00 |    X    |         |        |              |")
escreval (" |19:00 |         |         |        |              |")
escreval (" |20:00 |         |         |   X    |              |")
escreval (" |21:00 |         |         |        |              |")
escreval (" |22:00 |         |         |        |              |")
escreval ("  จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ ")
escreval (" ")
escreval ("")
escreval ("")
escreval ("1. Visualizar")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   tela_leitura
caso 2
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento Meus_Horarios_03
inicio
escreval ("              [ Tech Core School - 2022 ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("                [ MEUS HORARIOS ]")
escreval ("")
escreval ("")
escreval ("               |จจจจจจจจจจจจจจจ|")
escreval ("               |  Programa็ใo  |")
escreval ("               |      Web      |")
escreval ("               |               |")
escreval ("               |               |")
escreval ("               |   Docente     |")
escreval ("               | Dr. Comiche   |")
escreval ("               |_______________|")
escreval ("")
escreval ("")
escreval ("        |จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval ("        | Seg.    |Terc.    |Quar.   |Quin.  |Sex.  |")
escreval ("  ______|จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval (" |17:00 |         |         |        |              |")
escreval (" |18:00 |    X    |         |        |              |")
escreval (" |19:00 |         |         |        |              |")
escreval (" |20:00 |         |         |   X    |              |")
escreval (" |21:00 |         |         |        |              |")
escreval (" |22:00 |         |         |        |              |")
escreval ("  จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ ")
escreval (" ")
escreval ("")
escreval ("")
escreval ("1. Visualizar")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   tela_leitura
caso 2
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse


   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento Meus_Horarios_02
inicio
escreval ("           [ Tech Core School - 2022 ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("                [ MEUS HORARIOS ]")
escreval ("")
escreval ("")
escreval ("               |จจจจจจจจจจจจจจจ|")
escreval ("               |  Programa็ใo  |")
escreval ("               |     Java      |")
escreval ("               |               |")
escreval ("               |               |")
escreval ("               |   Docente     |")
escreval ("               | Eng. Fumo     |")
escreval ("               |_______________|")
escreval ("")
escreval ("")
escreval ("        |จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval ("        | Seg.    |Terc.    |Quar.   |Quin.  |Sex.  |")
escreval ("  ______|จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ|")
escreval (" |17:00 |         |         |        |              |")
escreval (" |18:00 |    X    |         |        |              |")
escreval (" |19:00 |         |         |        |              |")
escreval (" |20:00 |         |         |   X    |              |")
escreval (" |21:00 |         |         |        |              |")
escreval (" |22:00 |         |         |        |              |")
escreval ("  จจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจจ ")
escreval (" ")
escreval ("")
escreval ("1. Visualizar")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   tela_leitura
caso 2
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento contacto
inicio
escreval ("        [ Tech Core School - 2022 ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("              [ CONTACTO ]")
escreval ("")

para cont de 1 ate 10 faca
   se usuario[cont] <> "admin" entao
      se assunto[cont] = "" entao
         escreval ("Assunto: ")
         leia (assunto[cont])
         escreval ("")
         escreval ("Nome: ")
         leia (nome_assunto[cont])
         escreval ("")
         escreval("Email: ")
         leia (email_assunto[cont])
         escreval ("")
         escreval ("Mensagem: ")
         leia (msg[cont])
         escreval ("")
         interrompa
      fimse
   fimse
fimpara

escreval ("Pressione 'Enter' para enviar.")
leia (tec)
limpatela

escreval ("        [Tech Core School - 2022]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("              [ CONTACTO ]")
escreval ("")
escreval ("Sua mensagem foi enviada com sucesso.")
escreval ("Pressione 'Enter' para retornar ao Menu.")
leia (tec)

limpatela
boasvindas
fimprocedimento

procedimento notificacao
inicio
escreval ("              [Tech Core School - 2022]")
escreval ("                ~~~~~~~~~~~~~~~~")
escreval ("                [ NOTIFICAวีES ]")
escreval ("")

escreval ("--- Nใo Lidas ---")
para cont de 1 ate 10 faca
   se usuario[cont] <> "admin" entao
      se usuario[cont] <> "" entao
         escreval ("")
         escreval ("| C๓d. |",  cont," |" )
         escreval ("| Usuแrio |", usuario[cont], " |")
         escreval ("| Email |", email[cont], " |")
         escreval ("| Mensagem |", msg[cont], " |")
         escreval ("| RESPONDER |")
         escreval ("")
         escreval ("---------------------------------------")
      fimse
   fimse
fimpara
escreval ("")
escreval ("")
escreval ("Pressione 'Enter' para retonar ao Menu.")
leia (tecla)

limpatela
Admin
fimprocedimento

procedimento download
inicio
escreval ("         [ Tech Core School - 2022]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("              [ DOWNLOAD ]")
escreval ("")
escreval (" Aguarde enquanto o download ้ finalizado.")
escreval ("")

timer (1500)
escreval ("                        .")
escreval ("                        .")
escreval ("                        .")
escreval ("                        .")
timer (0)

limpatela
escreval ("          [ Tech Core School - 2022 ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("              [ DOWNLOAD ]")
escreval ("")
escreval ("           Download finalizado!")
escreval ("1. Visualizar")
escreval ("")
escreval ("2. Para voltar ao Menu.")
leia (resp)

escolha resp
caso 1
   limpatela
   tela_leitura
caso 2
   se tip[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento tela_leitura
inicio
escreval ("        [ Tech Core School - 2022 ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("")
escreval ("")
escreval ("          [ ", maiusc(titulo[cont_horario]), "]")
escreval ("")
escreval ("")
escreval (              "CAPอTULO 1")
escreval ("     Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas")
escreval ("porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies,")
escreval ("purus lectus malesuada libero, sit amet commodo magna eros quis urna.")
escreval ("Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus."  )
escreval ("")
escreval ("")
escreval ("Aperte o 'Play' para come็ar a ouvir.")
escreval ("Pressione 'Enter' para retornar o Menu.")
leia (tec)

se tip[cont_login] = 2 entao
   limpatela
   Admin
fimse

limpatela
boasvindas
fimprocedimento

procedimento pesquisar
inicio
escreval ("       [ Tech Core School - 2022 ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("             [ PESQUISAR ]")
escreval ("")
escreval ("Digite o nome do horario:")
leia (pesq)

para cont de 1 ate 10 faca
   se pesq = horario[cont] entao
      lencontrado <- verdadeiro
      cont_horario <- cont
      interrompa
   senao
      lencontrado<-falso
   fimse
fimpara

limpatela
se lencontrado = verdadeiro entao
   limpatela
   se horario[cont] = "Programacao Java" entao
      Cat_Pj_01
   senao
      se horario[cont] = "Programacao Java" entao
         Cat_Pj_02
      senao
         se horario[cont] = "Introducao a logica de Programacao" entao
            Cat_ILP_01
         senao
            se horario[cont] = "Introducao a logica de Programacao" entao
               Cat_ILP_02
            senao
               se horario[cont] = "Programacao W" entao
                  Cat_Pw_01
               senao
                  se horario[cont] = "Programacao Web" entao
                     Cat_Pw_02
                  senao
                     escreval ("        [ USTM SCHEDULES - 2022 ]")
                     escreval ("             ~~~~~~~~~~~~~")
                     escreval ("             [ PESQUISAR ]")
                     escreval ("")
                     escreval ("O horario para esta disciplina encontra-se em nosso sistema, por้m a pแgina nใo estแ completa")
                     escreval ("Aguarde que logo estarแ disponํvel.")
                     escreval ("Pressione 'Enter' para retornar ao Menu")
                     leia (tecla)
                     limpatela
                     Admin
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimse

se lencontrado = falso entao
   escreval ("Ainda nใo temos este horario no Sistema. Envie uma mensagem para o Admnistrador.")
fimse

escreval ("")
escreval ("Pressione 'Enter' para voltar")
leia (tec)
se tip[cont_login] = 2 entao
   limpatela
   Admin
fimse

limpatela
boasvindas
fimprocedimento

procedimento Admin
inicio
escreval ("        [ Tech Core School - 2022 ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("              [ OLม, ", maiusc(usuario[cont_login]),"]")
escreval ("")
escreval ("1. Dados Pessoais")
escreval ("2. Pesquisar")
escreval ("3. Categorias")
escreval ("4. Inserir horarios novos")
escreval ("5. Notifica็๕es")
escreval ("6. Logout")
leia (opcao)

escolha opcao
caso 1
   limpatela
   alterar_pessoais
caso 2
   limpatela
   pesquisar
caso 3
   limpatela
   categorias
caso 4
   limpatela
   inserir
caso 5
   limpatela
   notificacao
caso 6
   limpatela
   inicial
fimescolha
fimprocedimento

//excluido alterar


procedimento inserir
inicio
escreval ("      [Tech Core School - 2022]")
escreval ("          ~~~~~~~~~~~~~~~~~")
escreval ("             [ INSERIR ]")
escreval ("")
para cont de 1 ate 10 faca
   se titulo[cont] = "" entao
      escreval ("Insira a Disciplina: ")
      leia (titulo_inserir)
      escreval ("")
      titulo_repetido <- falso
      para cont2 de 1 ate 10 faca
         se titulo_inserir = titulo[cont2] entao
            limpatela
            titulo_repetido < - verdadeiro
            interrompa
         fimse
      fimpara
      se titulo_repetido = verdadeiro entao
         escreval ("Disciplina jแ existe! Pressione'Enter' para cadastrar um nova disciplina.")
         leia (tecla)
         limpatela
         inserir
      senao
         titulo[cont] <- titulo_inserir
         horario[cont] <- titulo_inserir
      fimse
      escreval ("Insira o nome do Disciplina: ")
      leia (docente[cont])
      escreval ("")
      escreval ("Insira o dia da semana: ")
      leia (ano[cont])
      escreval ("")
      escreval ("Insira a hora: ")
      leia (categoria[cont])
      escreval ("")
      interrompa
   fimse
fimpara
  // Mensagem dados cadastrdos cim sucesso
limpatela
escreval ("      [Tech Core School - 2022]")
escreval ("          ~~~~~~~~~~~~~~~~~")
escreval ("             [ INSERIR ]")
escreval ("")
escreval ("Dados cadastrados com sucesso!")
escreval ("Pressione 'Enter' para voltar.")
leia (tecla)
//Fim da funcao
limpatela
Admin
fimprocedimento

 // Limpa a tela apos a mensagem


inicio
  // Usuarios para login
usuario[1] <- "admin"
situacao[1] <- verdadeiro
email[1] <- "admin@teste.com"
msg[1] <- "teste."
senha[1] <- "admin"
tip[1] <- 2
//
usuario[2] <- "Covane"
situacao[2] <- verdadeiro
email[2] <- "usuario1@teste.com"
dia[2] <- "01"
mes[2] <- "09"
ano_nasc[2] <- "1991"
senha[2] <- "123"
tip[2] <- 1
//Fim do algoritmo para login
horario[3] <- "Introducao a Logica Programacao "
titulo[3] <- "Faculdade de Engenharia"
docente[3] <- "Eng. Covane"
categoria[3] <- "Programa็ใo Web"
//


inicial

fimalgoritmo


 //Fim do algoritmo
