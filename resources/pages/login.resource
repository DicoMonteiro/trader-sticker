*** Settings ***
Documentation        Login Page


Library        Browser



*** Keywords ***
Acessar a pagina
    New Page       https://trade-sticker-dev.vercel.app/

Preencher os campos de login
    [Arguments]        ${email}    ${password}

    Fill Text      css=input[name=email]        ${email}
    Fill Text      css=input[name=password]     ${password}
    
Submeter o login
    Click          css=button >> text=Entrar


Credenciais inválidas
    [Arguments]        ${msg_toast}

    ${locator}     Set Variable    css=.Toastify__toast-body div >> text=${msg_toast}

    Wait For Elements State    ${locator}    visible    2