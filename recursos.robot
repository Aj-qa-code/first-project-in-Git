*** Settings ***

Documentation
Library         SeleniumLibrary

*** Variables ***
${palabrasabuscar}         casos de prueba
${Navegador}        chrome
${URL}              https://www.google.com/

*** Keywords ***
Abrir Navegador y Esperar Logo
    Open Browser        ${URL}     ${Navegador}
    Wait Until Element Is Visible       xpath=//*[@id="hplogo"]