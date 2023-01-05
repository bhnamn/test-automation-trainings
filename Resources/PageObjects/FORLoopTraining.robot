*** Settings ***
Documentation    Foor loop learning
Library    SeleniumLibrary

Library    OperatingSystem


*** Variables ***
${URL}    http://www.saucedemo.com/
${BROWSER}    chrome
${EMPTY}


*** Test Cases ***
Test Case 1
    [Documentation]    Test case to demonstrate IF/ELSE in RF
    Set Selenium Implicit Wait    4s
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Button    //*[@id="login-button"]
    @{elements}    Get Webelements    //*[@class="inventory_list"]/div

    FOR    ${element}    IN    @{elements}
        ${text}    Get Text    ${element}
        Test Keyword 1    ${text}
    END
    Close Browser


*** Keywords ***
Test Keyword 1
    [Arguments]    ${TEXT}
    Log To Console    Keyword 1 executed - ${TEXT}
    Excel.files


Test Keyword 2
    Log To Console    Text field is empty
