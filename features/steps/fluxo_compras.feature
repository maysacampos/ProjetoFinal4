Feature: Fluxo de Compras


Scenario: Fluxo de compras do produto Buquê 12 Rosas Vermelhas Especiais
        Given que acesso o site Giuliana Flores
        When entro no menu da pagina inicial
        Then clico em login
        When preencho os campos de login com usuario lavinia_aurora_alves@eton.com.br e senha Teste123
        When resolvo um captcha
        Then clico em continuar 
        When clico no produto Buquê 12 Rosas Vermelhas Especiais
        When digito o CEP, data de entrega, periodo de entrega
        Then adiciono o produto no carrinho
        When digito o nome, tipo de endereco, numero da casa do destinatario e cartao em branco
        When removo o produto 
        Then verifico que o carrinho esta vazio 
        Then realizo logout


Scenario: Fluxo de compras do produto Cesta de Aniversário Mini Festa
        Given que acesso o site Giuliana Flores
        When entro no menu da pagina inicial
        Then clico em login
        When preencho os campos de login com usuario lavinia_aurora_alves@eton.com.br e senha Teste123
        When resolvo um captcha
        Then clico em continuar 
        When clico no produto Cesta de Aniversário Mini Festa
        When digito o CEP, data de entrega, periodo de entrega
        Then adiciono o produto no carrinho
        When digito o nome, tipo de endereco, numero da casa do destinatario e cartao em branco
        When removo o produto 
        Then verifico que o carrinho esta vazio 
        Then realizo logout

Scenario: Fluxo de compras do produto Mini Rosa Encantada
        Given que acesso o site Giuliana Flores
        When entro no menu da pagina inicial
        Then clico em login
        When preencho os campos de login com usuario lavinia_aurora_alves@eton.com.br e senha Teste123
        When resolvo um captcha
        Then clico em continuar 
        When clico no produto Mini Rosa Encantada
        When digito o CEP, data de entrega, periodo de entrega
        Then adiciono o produto no carrinho
        When digito o nome, tipo de endereco, numero da casa do destinatario e cartao em branco
        When removo o produto 
        Then verifico que o carrinho esta vazio 
        Then realizo logout
     