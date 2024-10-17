*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${imagem_produto}    img[alt="Imagem de Buquê Fascínio de Rosas Colombianas Vermelhas"]
${btn_add_to_cart}    xpath=//a[@id='ContentSite_lbtBuy' and contains(text(), 'Adicionar ao carrinho')]
${name_produto}    id=ContentSite_lblProductDsName
${price_produto}    css=div.container_full:nth-child(13) main.content-site:nth-child(4) div:nth-child(9) div.prod:nth-child(1) div.prod_col2 div.preco_prod:nth-child(7) > span.precoPor_prod:nth-child(3)
${txt_cep}    id=ContentSite_txtZip
${btn_ok_cep}    css=.jOpenShippingPopup
${btn_data}    css=.selectDate
${btn_confirma_data}    id=btConfirmShippingData
${horario_comercial}    xpath=//input[@name='periodRadio' and @vlprice='41,79']


*** Keywords ***
Clicar na Imagem do Produto
    Click Element    ${imagem_produto}

Adicionar produto ao carrinho
    Click Button    ${btn_add_to_cart}

Preencher campo CEP
    [Arguments]    ${cep}                  
    Input Text    ${txt_cep}    ${cep}

Clicar botao OK
    Click Element    ${btn_ok_cep}   

Escolher data de entrega
    Click Element    ${btn_data}

Confirmar Data de Entrega 
    Click Element   ${btn_confirma_data}   