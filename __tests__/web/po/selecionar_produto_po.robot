*** Settings ***
Resource    ../../../pages_web/base_page.robot

*** Test Cases ***
Selecionar Buquê Fascínio de Rosas Colombianas Vermelhas
    Tirar Screenshot    1-Inico
    Clicar no Perfil
    Clicar em Login
    Preencher usuario    lavinia_aurora_alves@eton.com.br
    Preencher senha    Teste123
    Tirar Screenshot    2-Login Preenchido
    Clicar no botao Continuar
    #Element Text Should Be    ${logo_img}    Giuliana Flores
    Tirar Screenshot    3-Lista de Produto
    Clicar na Imagem do Produto 
    Element Text Should Be    ${nome_produto}    Buquê Fascínio de Rosas Colombianas Vermelhas    
    Element Text Should Be    ${preco_produto}     R$ 202,93    
    Tirar Screenshot    4-Detalhes do Produto
    Adicionar produto ao carrinho
    Preencher campo CEP    30411312
    Tirar Screenshot    5-Carrinho
    Escolher data de entrega
    Confirmar Data de Entrega  
    Clicar botao OK
    Element Text Should Be    ${cart_product_quantity}    
    Element Text Should Be    ${titulo_secao}