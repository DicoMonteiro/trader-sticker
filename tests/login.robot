*** Settings ***
Documentation        Login tests

Resource        ../resources/main.resource

#Resource        ${EXECDIR}/VDT_QAcademy/trade-sticker/resources/main.resource

Test Setup       Teste inicial
Test Teardown    Teste final

*** Variables ***
${welcome}        Aquela figurinha incrível a um clique de distância.
${msg_toast}      Credenciais inválidas, tente novamente!


*** Test Cases ***
Deve logar com sucesso

    Acessar a pagina
    Preencher os campos de login    papito@gmail.com    vaibrasil
    Submeter o login

    Usuário logado                  ${welcome}


Não deve logar com sucesso - Senha incorreta

    Acessar a pagina
    Preencher os campos de login    papito@gmail.com    teste123
    Submeter o login

    Credenciais inválidas           ${msg_toast}

    #${temp}        Get Page Source
    #Log            ${temp}
