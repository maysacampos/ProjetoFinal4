*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Resource    login_page.robot
Resource    confirma_dados_compra_page.robot
Resource    selecionar_data_page.robot   
Resource    selecionar_produto_page.robot

*** Variables ***
${timeout}    5000ms
${url}    https://www.giulianaflores.com.br/
${browser}    Chrome
${date}
${remove_product_button}    id=ContentSite_Basketcontrol1_rptBasket_rptBasketItems_0_lbtRemoveProduct_0
${menu_logout}    css=#perfil-hidden > img
${btn_logout}    css=li:nth-child(11) > a:nth-child(2)
${logo_img}    css=img[alt='Giuliana Flores']    

*** Keywords ***
Abrir navegador
    [Documentation]    Abre o navegador e maximiza a janela.
    Register Keyword To Run On Failure    Tirar Screenshot
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    10s  

Fechar navegador
    [Documentation]    Fecha o navegador após um breve atraso.
    Sleep    500ms      
    Close Browser

Obter Data e hora
    [Documentation]    Obtém a data e hora atuais e a formata.
    ${date}=    Get Current Date  
    ${date}=    Convert Date    ${date}    result_format=%Y.%m.%d_%H.%M.%S
    Set Global Variable    ${date}

Tirar Screenshot    
    [Arguments]    ${screenshot_name}                                                                    
    [Documentation]    Captura uma screenshot e a salva em um diretório específico.
    Capture Page Screenshot    screenshots/giuliana/${date}/${TEST_NAME}/${screenshot_name}.jpg

Realizar Logout
    [Documentation]    Realiza logout do sistema.
    Go Back
    Go Back
    Click Element    ${remove_product_button}
    Click Element    ${menu_logout}
    Click Element    ${btn_logout}
