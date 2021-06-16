Algoritmo "Projeto login"

var

   opcao, i, conta, linBanco, l, c : inteiro
   confirmaSenha, testeNome, testeSenha, voltar : caractere
   menu, verificaNome, verificaSenha, continuaLogin : logico
   bancoDados : vetor [0..1, 0..4] de caractere

inicio

   menu <- verdadeiro
   linBanco <- 0
   
   enquanto menu = verdadeiro faca
      escreva("========== Menu ==========")
      escreval
      escreval

      escreval("1. Cadastro")
      escreval("2. Login")
      escreval("3. Banco de dados")
      escreval("4. Sair")
      escreval

      escreva("Escolha uma opção: ")
      leia(opcao)

      se opcao = 1 entao
         limpatela
         escreval("========== Cadastro ==========")
         escreval
         escreva("Nome de usuário: ")
         leia(bancoDados[0, linBanco])

         escreva("Senha: ")
         leia(bancoDados[1, linBanco])
         escreva("Confirmar senha: ")
         leia(confirmaSenha)
         enquanto bancoDados[1, linBanco] <> confirmaSenha faca
            limpatela
            escreval("========== Cadastro ==========")
            escreval
            escreval("** As senhas não coincidem **")
            escreval
            escreval("Nome de usuário: ", bancoDados[0, linBanco])
            escreva("Senha: ")
            leia(bancoDados[1, linBanco])
            escreva("Confirmar senha: ")
            leia(confirmaSenha)
         fimenquanto
         linBanco <- linBanco + 1
         confirmaSenha <- ""
         limpatela
      fimse
      
      se opcao = 2 entao
         se bancoDados[0,0] = "" entao
            limpatela
            escreval("Nenhum usuário cadastrado!")
            continuaLogin <- falso
         fimse
         se continuaLogin = verdadeiro entao
            verificaNome <- falso
            verificaSenha <- falso
            limpatela
            escreval("========== Login ==========")
            escreval
            escreva("Usuário: ")
            leia(testeNome)
            escreva("Senha: ")
            leia(testeSenha)
            para i de 0 ate 4 faca
               se bancoDados[0, i] = testeNome entao
                  verificaNome <- verdadeiro
               fimse
               se bancoDados[1, i] = testeSenha entao
                  verificaSenha <- verdadeiro
               fimse
            fimpara

            enquanto (verificaNome = falso) ou (verificaSenha = falso) faca
               verificaNome <- falso
               verificaSenha <- falso
               limpatela
               escreval("========== Login ==========")
               escreval
               escreval("** Usuário ou senha incorretos! **")
               escreval
               escreva("Usuário: ")
               leia(testeNome)
               escreva("Senha: ")
               leia(testeSenha)
               para i de 0 ate 4 faca
                  se bancoDados[0, i] = testeNome entao
                     verificaNome <- verdadeiro
                  fimse
                  se bancoDados[1, i] = testeSenha entao
                     verificaSenha <- verdadeiro
                  fimse
               fimpara
            fimenquanto
            escreval
            escreval("Login efetuado com sucesso!")
         fimse
         continuaLogin <- verdadeiro
         escreval
         escreval("** Tecle enter para voltar **")
         leia(voltar)
         limpatela
      fimse
      
      se opcao = 3 entao
         limpatela
         escreval("========== Banco de dados ==========")
         escreval
         escreval("Nomes/Senhas: ")
         escreval
         para l de 0 ate 4 faca
            para c de 0 ate 1 faca
               escreva(l, ". ", bancoDados[c, l], "            ")
            fimpara
            escreval
            escreval
         fimpara
         
         escreval
         escreval("** Tecle enter para voltar **")
         leia(voltar)
         limpatela
      fimse
      
      se opcao = 4 entao
         menu <- falso
      fimse
   fimenquanto
   
fimalgoritmo