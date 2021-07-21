
Dado('que eu esteja na pagina inicial') do
    @home_page.load
end
  
Quando('busco por {string}') do |item|
    @home_page.search(item)
    expect(page).to have_content "Blouse"
end
  
Quando('clico no primeiro item que aparecer') do
    find('.left-block').click
end
  
Então('poderei adicionar o item ao carrinho') do
    click_button 'Add to cart'
    expect(page).to have_content "Product successfully added to your shopping cart"
end

