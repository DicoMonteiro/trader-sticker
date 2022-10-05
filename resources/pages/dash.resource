*** Settings ***
Documentation        Dashboard Page


Library        Browser



*** Keywords ***
Usuário logado
    [Arguments]        ${welcome}

    Get Text       css=.header-content strong    equal    ${welcome}

Pesquisar por negociadores
    [Arguments]    ${key_word}
    Fill Text      css=#search-users input[placeholder^=Busque]    ${key_word}
    Click          css=#search-users button >> text=Buscar

Selecionar figurinha que deseja negociar
    [Arguments]     ${sticker}
    #Click           css=.images img[src*=${figure}]

    Click           xpath=//img[@alt="${sticker}"]/..


Entrar em contato com o negociador
    Click        css=footer button >> text=Entrar em contato
