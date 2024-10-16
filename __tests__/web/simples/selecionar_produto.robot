*** Settings ***
Library    SeleniumLibrary

Test Teardown    Close Browser      #para finalizar o teste, fecha o navegador

*** Variables ***
${url}    https://www.giulianaflores.com.br/
${browser}    Chrome
${timeout}    10000ms


*** Test Cases ***
# frases --> Keywords
Selecionar Buquê Fascínio de Rosas Colombianas Vermelhas
    Dado que acesso o site giulianaflores
    #Quando clico em fechar o cookies    
    #E clico em fechar a notificação    
    Quando clico no icone de Perfil 
    Então clico em Login/Cadastrar
    Entao sou direcionado para a pagina de login
    Quando preencho o campo usuario    lavinia_aurora_alves@eton.com.br
    E preencho o campo senha    Teste123
    E clico no botao Continuar
    Então sou direcionado para a página inicial
    Quando clico no produto    Buquê Fascínio de Rosas Colombianas Vermelhas    $202,93        
    Entao sou direcionado para a pagina do produto
    Quando clico em escolher um cep    30411312
    Quando clico em adicionar no carrinho
    Quando clico na data    2024.10.31
    Quando clico no horario    Comercial 
    Quando clico em OK
    Entao visualizo o numero de items no carrinho    1
    Entao visualizo o nome do produto    Buquê Fascínio de Rosas Colombianas Vermelhas

*** Keywords ***
Dado que acesso o site giulianaflores
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window    
    #Set Browser Implicit Wait    30s    #tempo
    #Wait Until Element Is Visible    css=.login_logo    ${timeout}    # espera ate o elemento X estar visivel

#Quando clico em fechar o cookies
#    Run Keyword If    Element Should Be Visible    id=cookies    Click Button    id=reject  

#E clico em fechar a notificação
#    Run Keyword If    Element Should Be Visible    id=notificação    Click Button    id=close_notification


Quando clico no icone de Perfil
    Wait Until Element Is Visible    xpath=//img[@alt='Icone Perfil']    timeout=30s
    Click Element    xpath=//img[@alt='Icone Perfil']

Então clico em Login/Cadastrar
    Wait Until Element Is Visible    xpath=//a[contains(text(), 'login / Cadastrar')]    timeout=30s
    Click Link    xpath=//a[contains(text(), 'login / Cadastrar')]

Entao sou direcionado para a pagina de login
    Wait Until Element Is Visible    xpath=//span[@itemprop='name' and text()='Identificação']    timeout=30s

Quando preencho o campo usuario
    [Arguments]    ${ContentSite_txtEmail}
    Input Text    id=ContentSite_txtEmail    ${ContentSite_txtEmail}

E preencho o campo senha
    [Arguments]    ${ContentSite_txtPassword}
    Input Text    id=ContentSite_txtPassword    ${ContentSite_txtPassword}

E clico no botao Continuar
    Wait Until Element Is Visible    id=ContentSite_ibtContinue    timeout=30s
    Click Link    id=ContentSite_ibtContinue

Então sou direcionado para a página inicial
    Click Element    xpath=//img[@alt='Giuliana Flores Floricultura e Flores online']

Quando clico no produto
    [Arguments]    ${title-item}    ${actual-price}
    Set Test Variable    ${test_title_item}    ${title-item}
    Set Test Variable    ${test_actual_price}    ${actual-price}
    Click Element    xpath=//h3[text()='Buquê Fascínio de Rosas Colombianas Vermelhas']
     
Entao sou direcionado para a pagina do produto
    Wait Until Element Is Visible    id=ContentSite_lblProductDsName

Quando clico em escolher um cep
    [Arguments]    ${zip_code}
    Wait Until Element Is Visible    id=ContentSite_txtZip    timeout=30s
    Input Text    id=ContentSite_txtZip    ${zip_code}

Quando clico em adicionar no carrinho
    Click Element    xpath=//a[@id='ContentSite_lbtBuy' and contains(text(), 'Adicionar ao carrinho')]

Quando clico na data
    [Arguments]    ${date}
    Wait Until Element Is Visible    xpath=//a[@date='${date}']    timeout=10
    Click Element    xpath=//a[@date='${date}']

Quando clico no horario
    [Arguments]    ${horario}
    Wait Until Element Is Visible    xpath=//input[@class='jPeriodRadio' and contains(@dsperiod, '${horario}')]    timeout=20
    Click Element    xpath=//input[@class='jPeriodRadio' and contains(@dsperiod, '${horario}')]

Quando clico em OK
    Wait Until Element Is Visible    id=btConfirmShippingData    timeout=10
    Click Element    id=btConfirmShippingData

Entao visualizo o numero de items no carrinho
    [Arguments]    ${expected_number}
    Wait Until Element Is Visible    css=input[name="ctl00$ContentSite$Basketcontrol1$rptBasket$ctl00$rptBasketItems$ctl01$nuQty"]    timeout=10
    ${actual_number}=    Get Value    css=input[name="ctl00$ContentSite$Basketcontrol1$rptBasket$ctl00$rptBasketItems$ctl01$nuQty"]
    Should Be Equal As Strings    ${actual_number}    ${expected_number}

Entao visualizo o nome do produto
    [Arguments]    ${expected_name}
    ${actual_name}=    Get Text    css=.prodBasket_nome a
    Should Be Equal    ${actual_name}    ${expected_name}
