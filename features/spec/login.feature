# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como usuário do site FakeEcommerce
  o usuário deve ser autorizado a conectar
  com suas credênciais no sistema

    Contexto: 
      Dado que eu acesso à pagina de login

  # Completar o cenário abaixo
    @sucesso_login
    Cenário: Realizar login
      Quando eu faço login com "andersoncosta@gmail.com" e "123456"
      Então devo ser redirecionado para tela de acesso a informações do meu usuário
  
  # Completar o cenário abaixo
    @senha_incorreta
    Cenário: Login com falha
      Quando eu faço login com "andersoncosta@gmail.com" e "654321"
      Então o sistema deve apresentar a mensagem "Authentication failed"

    @usuario_nao_existe
    Cenário: Usuário não existe
      Quando faço login com um usuário que não foi cadastrado "teste0101@teste.com" e "123457"
      Então o sistema deve apresentar a mensagem "Authentication failed"
