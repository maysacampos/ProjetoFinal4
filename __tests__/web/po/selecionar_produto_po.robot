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
    Tirar Screenshot    3-Lista de Produto 
    Wait Until Element Is Visible    css=img[alt="Imagem de Buquê Fascínio de Rosas Colombianas Vermelhas"]
    Clicar na Imagem do Produto    Imagem de Buquê Fascínio de Rosas Colombianas Vermelhas   
    Tirar Screenshot    4-Detalhes do Produto
    Adicionar produto ao carrinho    Adicionar ao carrinho
    Preencher campo CEP    30411312
    Tirar Screenshot    5-Carrinho
    Digite o CEP da entrega    30411312
 
