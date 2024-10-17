*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${name_produto}    xpath=//a[contains(text(),'Buquê Fascínio de Rosas Colombianas Vermelhas')]
${price_produto}    css=div.giuliana2013:nth-child(13) div.content_checkout div.content_basket:nth-child(5) div.upnBasket:nth-child(4) div.box_basket:nth-child(2) div.basket:nth-child(2) ul.prods_basket li:nth-child(1) div.preco_prodBasket.preco-subtotal-produto:nth-child(6) > span.precoPor_basket:nth-child(3)
${btn_continue_compra}    xpath=//a[@id='ContentSite_ibtContinue']

*** Keywords *** 
Clicar no botao Continuar
    Click Element    ${btn_continue_compra}   