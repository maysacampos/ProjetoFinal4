*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${login_menu}    css=img[alt='Icone Perfil']
${login_button}    css=a[rel='nofollow']
${login_title}    css=Giuliana Flores
${accept_popup}    id=adopt-accept-all-button
${input_email}    id=ContentSite_txtEmail
${input_password}    id=ContentSite_txtPassword
${continue_login_button}    id=ContentSite_ibtContinue

*** Keywords ***
Clicar no Perfil 
    [Documentation]    Clica no menu de login.
    Click Element    ${login_menu}   

Clicar em Login
    [Documentation]    Clica no botão de login.
    Click Element    ${login_button}
    
Preencher usuario
    [Arguments]    ${usuario}
    [Documentation]    Preenche o campo de usuário com o email fornecido.
    Input Text    ${input_email}    ${usuario}

Preencher senha
    [Arguments]    ${senha}
    [Documentation]    Preenche o campo de senha com a senha fornecida.
    Input Password    ${input_password}    ${senha}

Aceitar Pop Up
    [Documentation]    Aceita o pop-up de cookies ou notificações.
    Click Element    ${accept_popup}

Clicar no botao Login
    [Documentation]    Clica no botão para continuar com o login.
    Click Element    ${continue_login_button}
