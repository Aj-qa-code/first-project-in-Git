*** Settings ***

Resource    recursos.robot


*** Test Cases ***
G001 Búsqueda de palabras en google
    Abrir Navegador y Esperar Logo
    Input Text      xpath=//*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/Input      ${palabrasabuscar}
    Click Element       xpath=//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
    Title Should Be         ${palabrasabuscar} - Buscar con Google
    Page Should Contain     ${palabrasabuscar}
    Close Browser


G002 Hacer click en el botón de búsqueda sin escribir palabras en Google
    Abrir Navegador y Esperar Logo
    Click Element       xpath=//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
    Title Should Be         Google
    Close Browser


G002 Hacer click en el botón de búsqueda sin escribir palabras en Google
    Abrir Navegador y Esperar Logo
    Click Element       xpath=//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
