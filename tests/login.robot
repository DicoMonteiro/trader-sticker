*** Settings ***
Documentation        Login tests

Resource        ../resources/main.resource

#Resource        ${EXECDIR}/VDT_QAcademy/trade-sticker/resources/main.resource

Test Setup       Teste inicial
Test Teardown    Teste final

*** Variables ***
${welcome}               Aquela figurinha incrível a um clique de distância.
${msg_toast}             Credenciais inválidas, tente novamente!
${msg_toast_pass}        Por favor, informe a sua senha secreta!
${msg_toast_email}       Por favor, informe o seu email!
${msg_toast_fields}      Por favor, informe suas credenciais!



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

Não deve logar com sucesso - Senha sem preencher

    Acessar a pagina
    Preencher os campos de login    papito@gmail.com    ${EMPTY}
    Submeter o login

    Credenciais inválidas           ${msg_toast_pass}


Não deve logar com sucesso - Email sem preencher

    Acessar a pagina
    Preencher os campos de login    ${EMPTY}    vaibrasil
    Submeter o login

    Credenciais inválidas           ${msg_toast_email}


Não deve logar com sucesso - Sem preencher nenhum campo

    Acessar a pagina
    Preencher os campos de login    ${EMPTY}    ${EMPTY}
    Submeter o login

    Credenciais inválidas           ${msg_toast_fields}