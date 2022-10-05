*** Settings ***
Documentation        Arquivo principal do projeto


Library        Browser

Resource       pages/dash.resource
Resource       pages/login.resource
Resource       pages/whatsapp.resource



*** Keywords ***
Efetuar login
    [Arguments]    ${email}    ${password}
    
    Acessar a pagina
    Preencher os campos de login    ${email}    ${password}
    Submeter o login


Teste inicial
    New Browser    browser=${BROWSER}    headless=${HEADLESS}


Teste final
    Sleep    1
    Take Screenshot