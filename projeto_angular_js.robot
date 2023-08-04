** Settings **
Library    SeleniumLibrary

** Variables **

** Keywords **

** Test Cases **
Cenário 1: Adicionando uma Tarefa
    Open Browser       https://samuel-oldra.github.io/Projeto-AngularJS/    chrome
    Input Text         nome                                                 Tarefa 1
    Click Button       Adicionar
    ${count} =         Get Element Count                                    class:list-group-item
    Log To Console     ${count}
    Should Be True     ${count} == 1
    ${text} =          Get Text                                             class:item
    Log To Console     ${text}
    Should Be Equal    ${text}                                              Tarefa 1
    Close Browser

Cenário 2: Adicionando duas Tarefa
    Open Browser      https://samuel-oldra.github.io/Projeto-AngularJS/    chrome
    Input Text        nome                                                 Tarefa 1
    Click Button      Adicionar
    Input Text        nome                                                 Tarefa 2
    Click Button      Adicionar
    ${count} =        Get Element Count                                    class:list-group-item
    Should Be True    ${count} == 2
    Close Browser

Cenário 3: Adicionando duas e Excluindo uma Tarefa
    Open Browser      https://samuel-oldra.github.io/Projeto-AngularJS/    chrome
    Input Text        nome                                                 Tarefa 1
    Click Button      Adicionar
    Input Text        nome                                                 Tarefa 2
    Click Button      Adicionar
    ${count} =        Get Element Count                                    class:list-group-item
    Should Be True    ${count} == 2
    Click Button      X
    ${count} =        Get Element Count                                    class:list-group-item
    Should Be True    ${count} == 1
    Close Browser