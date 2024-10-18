*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${imagem_produto}                   css=img[src='//static.giulianaflores.com.br/images/product/13527gg.jpg?ims=300x300']
${inventory_item_product_name}      css=#ContentSite_lblProductDsName
${inventory_item_product_price}     css=.precoPor_prod

