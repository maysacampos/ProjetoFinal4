*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${imagem_produto}           img[alt='Imagem de Buquê Fascínio de Rosas Colombianas Vermelhas']
${adicionar_ao_carrinho}    xpath=//a[@id='ContentSite_lbtBuy' and contains(text(), 'Adicionar ao carrinho')]
${name_produto}             id=ContentSite_lblProductDsName
${price_produto}            css=div.container_full:nth-child(13) main.content-site:nth-child(4) div:nth-child(9) div.prod:nth-child(1) div.prod_col2 div.preco_prod:nth-child(7) > span.precoPor_prod:nth-child(3)
${txt_cep}                  id=ContentSite_txtZip
${btn_ok_cep}               css=.jOpenShippingPopup
${data_entrega}             xpath=//a[@class='selectDate' and @date='${data_entrega}' and text()='31']
${btn_confirma_data}        id=btConfirmShippingData
${horario_comercial}        xpath=//input[@name='periodRadio' and @vlprice='41,79']


*** Keywords ***
Clicar na Imagem do Produto
    [Arguments]    ${imagem_produto}
    Click Element     css=img[alt="${imagem_produto}"]

Adicionar produto ao carrinho
    [Arguments]    ${adicionar_ao_carrinho}     
    Click Element    xpath=//a[@id='ContentSite_lbtBuy' and contains(text(), 'Adicionar ao carrinho')]

Preencher campo CEP
    [Arguments]    ${cep}                  
    Input Text    ${txt_cep}    ${cep}

Clicar botao OK
    Click Element    ${btn_ok_cep}   

Digite o CEP da entrega
    [Arguments]    ${cep}                  
    Input Text    ${txt_cep}    ${cep}

Clicar na data de entrega
    [Arguments]    ${data}
    ${seletor_data}    Set Variable    //a[@class='selectDate' and @date='${data_entrega}' and text()='31']
    Wait Until Element Is Visible    xpath=${seletor_data}    timeout=10
    Click Element    xpath=${seletor_data}
  
    #[Arguments]    ${data}
    #${seletor_data}    Set Variable    //a[@class='selectDate' and @date='${data}' and text()='31']
    #Wait Until Element Is Visible    xpath=${seletor_data}    timeout=20
    #Capture Page Screenshot    screenshot_before_click.png
    #Click Element    xpath=${seletor_data}

Clicar botao OK
    Click Element    css=.confirm-button    
    