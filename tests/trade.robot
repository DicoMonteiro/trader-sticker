*** Settings ***
Documentation        Teste de negociacao de figurinhas da copa do mundo.


Resource        ../resources/main.resource

Test Setup       Teste inicial
Test Teardown    Teste final

*** Variables ***
${sticker}        Neymar Jr

*** Test Cases ***
Deve negociar a figurinha Neymar Legend
    Efetuar login    papito@gmail.com    vaibrasil

    Pesquisar por negociadores      legend
    #Selecionar figurinha que deseja negociar    neymar-legend
    Selecionar figurinha que deseja negociar    ${sticker}
    Entrar em contato com o negociador

    Mensagem a ser enviada ao negociador    ${sticker}