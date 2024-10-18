*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${name_produto}            xpath=//span[@id='ContentSite_lblProductDsName' and text()='Buquê Fascínio de Rosas Colombianas Vermelhas']
${price_produto}           css=.precoPor_prod
${btn_continue_compra}     xpath=//a[@id='ContentSite_ibtContinue']


*** Keywords *** 
Clicar no botao Continuar
    Click Element    ${btn_continue_compra}   