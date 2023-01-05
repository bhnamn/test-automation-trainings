*** Settings ***
Library    SeleniumLibrary
Resource    ./HeaderPage.resource


*** Variables ***
${search_result_prefix}    results for


*** Keywords ***
Verify Search Results
    [Arguments]    ${search_text}
    Page Should Contain    ${search_result_prefix} ${search_text}

Filter Results By Condition
    [Documentation]    The keyword sort the results by the condition New
    Click Element    //span[@class='filter-menu-button__button-text' and text()='Condition']
    Sleep    1s
    Click Element    //span[@class='filter-menu-button__text' and text()='New']

Verify Filter Results
    [Documentation]    The keyword finds the given search key
    Element Should Contain    //div[text()='New']    New
