*** Settings ***
Documentation        WhatsappWeb Page


Library        Browser


*** Keywords ***
Mensagem a ser enviada ao negociador
    [Arguments]        ${sticker_name}

    ${expected_msg}    Set Variable    
    ...                Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${sticker_name}, bora negociar?

    Switch Page    NEW

    Wait For Elements State    css=#main_block p >> text=${expected_msg}    visible    2