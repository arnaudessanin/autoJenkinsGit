*** Settings ***
Library    Selenium2Library  

*** Variables ***
${url}    https://www.google.com  

*** Test Cases ***
HomePage
    Open Browser    ${url}    firefox
    Input Text    css:input#lst-ib    Atos  
    Set Focus To Element    css:div#lga  
    Click Button    xpath://div[@class="jsb"]//input[@value="Recherche Google"]
    Wait Until Page Contains    Atos    10
    ${elm}    Get Element Count    css:li.sbsb_c.gsfs 
    log    ${elm}
    Close Browser