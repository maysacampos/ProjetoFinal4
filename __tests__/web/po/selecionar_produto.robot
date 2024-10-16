*** Settings ***
Library    SeleniumLibrary

Test Teardown    Close Browser      #para finalizar o teste, fecha o navegador

*** Variables ***
${url}    https://www.giulianaflores.com.br/
${browser}    Chrome
${timeout}    10s


*** Test Cases ***
# frases --> Keywords
Selecionar Buquê 12 Rosas Vermelhas Especiais
    Dado que acesso o site giulianaflores
    Quando clico em fechar o cookies    
    E clico em fechar a notificação    
    E seleciono o Perfil    Login
    Quando preencho o campo usuario    lavinia_aurora_alves@eton.com.br
    E preencho o campo senha    Teste123
    E clico no botao Continuar
    Então sou direcionado para a pagina de produtos
    Quando clico no produto    Buquê 12 Rosas Vermelhas Especiais    $149,90
    Então sou direcionado para a pagina do produto
    Quando clico em adicionar no carrinho
    Então visualizo o numero de items no carrinho    1
    Quando clico em adicionar ao carrinho  
    Então escolho um cep    30411-312
    Quando clico em OK 
    Então sou direcionado para a pagina de data escolhida
    Quando clico na data    HOJE
    Quando clico no horario    Noite        
    Então sou direcionado para a pagina do carrinho
    Quando clico em Home
    E clico em Perfil    Sair
    Então sou direcionado para a pagina inicial


*** Keywords ***
Dado que acesso o site giulianaflores
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window    
    #Set Browser Implicit Wait    30s    #tempo
    #Wait Until Element Is Visible    css=.login_logo    ${timeout}    # espera ate o elemento X estar visivel

Quando clico em fechar o cookies
    Wait Until Element Is Visible    id=cookies    ${timeout}
    Click Button    id=reject  

E clico em fechar a notificação
    Wait Until Element Is Visible    id=notification    ${timeout}  # Ajuste o ID se necessário
    Click Button    id=close_notification

E seleciono o Perfil
    Wait Until Element Is Visible    id=login-button    ${timeout}
    Click Button    id=login-button

Quando preencho o campo usuario
    [Arguments]    ${username}
    Input Text    id=username    ${username}

E preencho o campo senha
    [Arguments]    ${password}
    Input Text    id=password    ${password}

E clico no botao Continuar
    Wait Until Element Is Visible    id=continue    ${timeout}
    Click Button    id=continue

Então sou direcionado para a pagina de produtos
    Wait Until Element Is Visible    id=products    ${timeout}

Quando clico no produto
    [Arguments]    ${product}    ${price}
    Click Element    xpath=//div[contains(text(),'${product}') and contains(text(),'${price}')]

Então sou direcionado para a pagina do produto
    Wait Until Element Is Visible    id=product_page    ${timeout}

Quando clico em adicionar no carrinho
    Wait Until Element Is Visible    id=add_to_cart    ${timeout}
    Click Button    id=add_to_cart

Então visualizo o numero de items no carrinho
    [Arguments]    ${number}
    Wait Until Element Is Visible    id=cart    ${timeout}
    Element Should Contain    id=cart    ${number}

Quando clico em adicionar ao carrinho
    Wait Until Element Is Visible    id=add_to_cart    ${timeout}
    Click Button    id=add_to_cart

Então escolho um cep
    [Arguments]    ${zip_code}
    Input Text    id=zip    ${zip_code}

Quando clico em OK
    Wait Until Element Is Visible    id=ok    ${timeout}
    Click Button    id=ok

Então sou direcionado para a pagina de data escolhida
    Wait Until Element Is Visible    id=date_page    ${timeout}

Quando clico na data
    [Arguments]    ${date}
    Click Element    xpath=//div[contains(text(),'${date}')]

Quando clico no horario
    [Arguments]    ${time}
    Click Element    xpath=//div[contains(text(),'${time}')]

Então sou direcionado para a pagina do carrinho
    Wait Until Element Is Visible    id=cart_page    ${timeout}

Quando clico em Home
    Wait Until Element Is Visible    id=home    ${timeout}
    Click Button    id=home

E clico em Perfil
    Wait Until Element Is Visible    id=profile    ${timeout}
    Click Button    id=profile

Então sou direcionado para a pagina inicial
    Wait Until Element Is Visible    id=home_page    ${timeout}