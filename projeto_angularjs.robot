** Settings **
Library    SeleniumLibrary

** Variables **

** Keywords **
Abrir Sistema/Site
    Open Browser    https://samuel-oldra.github.io/CadastroDeTarefas-AngularJS/    chrome

Captura Tela
    Capture Page Screenshot    selenium-screenshot-{index:03}.png

** Test Cases **
Cenário 1: Adicionando uma Tarefa
    Abrir Sistema/Site
    Input Text            nome                 Tarefa 1
    Click Button          Adicionar
    ${count} =            Get Element Count    class:list-group-item
    Log To Console        ${count}
    Should Be True        ${count} == 1
    ${text} =             Get Text             class:item
    Log To Console        ${text}
    Should Be Equal       ${text}              Tarefa 1
    Captura Tela
    Close Browser

Cenário 2: Adicionando duas Tarefa
    Abrir Sistema/Site
    Input Text            nome                 Tarefa 1
    Click Button          Adicionar
    Input Text            nome                 Tarefa 2
    Click Button          Adicionar
    ${count} =            Get Element Count    class:list-group-item
    Should Be True        ${count} == 2
    Captura Tela
    Close Browser

Cenário 3: Adicionando duas e Excluindo uma Tarefa
    Abrir Sistema/Site
    Input Text            nome                 Tarefa 1
    Click Button          Adicionar
    Input Text            nome                 Tarefa 2
    Click Button          Adicionar
    ${count} =            Get Element Count    class:list-group-item
    Should Be True        ${count} == 2
    Click Button          X
    ${count} =            Get Element Count    class:list-group-item
    Should Be True        ${count} == 1
    Captura Tela
    Close Browser
