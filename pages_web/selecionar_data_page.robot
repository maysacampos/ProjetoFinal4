*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${imagem_produto}    css=img[src='//static.giulianaflores.com.br/images/product/13527gg.jpg?ims=300x300']
${nome_produto}    xpath=//h3[@class='title-item' and text()='Buquê Fascínio de Rosas Colombianas Vermelhas']
${preco_produto}    xpath=//span[@class='actual-price' and text()='R$ 202,93']


*** Keywords ***
#Clicar na Imagem do Produto
#    [Documentation]    Clica na imagem do produto para selecioná-lo.
#    Click Element    ${imagem_produto}

Verificar Nome do Produto
    [Documentation]    Verifica se o preço do produto está correto.
    Element Text Should Be    ${nome_produto}    Buquê Fascínio de Rosas Colombianas Vermelhas

Verificar Preço do Produto
    [Documentation]    Verifica se o preço do produto está correto.
    Element Text Should Be    ${preco_produto}    R$ 202,93