*** Settings ***
Documentation    Conditional statement learning
Library    SeleniumLibrary


*** Variables ***
${URL}    http://www.saucedemo.com/
${BROWSER}    chrome
${EXPECTED_ITEM_COUNT}    10


*** Test Cases ***
Test Case 1
    [Documentation]    Test case to demonstrate IF/ELSE in RF
    Set Selenium Implicit Wait    4s
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Button    //*[@id="login-button"]
    ${items_on_page}    Get Element Count    //*[@class="inventory_list"]/div
    IF    ${items_on_page} == ${expected_item_count}
        Test Keyword 1    ${items_on_page}
    ELSE
        Test Keyword 2    ${items_on_page}
    END

FOR    ${element}    IN    @{LIST}
    Log    ${element}
    
END


*** Keywords ***
Test Keyword 1
    [Arguments]    ${ITEMS_ON_PAGE}
    Log To Console    Keyword 1 executed - Found ${ITEMS_ON_PAGE} items
    Close Browser

Test Keyword 2
    [Arguments]    ${ITEMS_ON_PAGE}
    Log To Console    Keyword 2 executed - Found ${ITEMS_ON_PAGE} items
    Close Browser
