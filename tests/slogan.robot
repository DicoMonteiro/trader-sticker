*** Settings ***
Library   Browser

Resource        ../resources/main.resource

Test Setup       Teste inicial
Test Teardown    Teste final

*** Variables ***
${slogan}               Conectando colecionadores de figurinhas da copa.

*** Test Cases ***
Deve validar o slogan da página inicial
    New Page            https://trade-sticker-dev.vercel.app/
    Get Text            .logo-container h2    contains    ${slogan}