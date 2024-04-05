*** Settings ***
Resource        linx_resources.robot
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Verificar Filiais e Segmentos
    [Tags]  Filiais e Segmentos
    Dado que o usuário esteja na página home page da Linx.com.br
    Quando ele clicar no menu "Institucional"
    E Quando ele clicar no submenu "Matriz e Filiais"
    Então verificar se a filial Cascavel/PR existe
    E Então verificar se a filial Aparecida de Goiania/GO NÃO existe
    Quando ele retornar a página home page da Linx.com.br
    Quando ele clicar no menu "Institucional"
    E Quando ele clicar no submenu "Carreira Linx"
    Então filtrar pelo segmento "Linx - Tecnologia e Produto"
    E Então verificar se o segmento "Linx - Suporte" NÃO existe
    E Então verificar se filtrou o segmento selecionado
