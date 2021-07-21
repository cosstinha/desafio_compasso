

Dado('que eu acesso à pagina de login') do
  @login_page.load 

end


Quando('eu faço login com {string} e {string}') do |email, senha|
    find('#email').set email
    find('#passwd').set senha
    click_button 'Sign in'
end

Então('devo ser redirecionado para tela de acesso a informações do meu usuário') do
  expect(page).to have_content "MY ACCOUNT"
end

Então('o sistema deve apresentar a mensagem {string}') do |falha|
  expect(page).to have_content "Authentication failed"
end

Quando('faço login com um usuário que não foi cadastrado {string} e {string}') do |email2, senha2|
  find('#email').set email2
  find('#passwd').set senha2
  click_button 'Sign in'
  expect(page).to have_content "Authentication failed"
end
