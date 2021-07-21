# language: pt

Funcionalidade: Adicionar itens ao carrinho
    Como consumidor do site FakeEcommerce
    gostaria de adicionar os itens ao carrinho
        

    @adicionar_carrinho
    Cenário: Finalizar compras
        Dado que eu esteja na pagina inicial
        Quando busco por "blouse"
        E clico no primeiro item que aparecer
        Então poderei adicionar o item ao carrinho

