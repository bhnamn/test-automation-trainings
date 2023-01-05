*** Settings ***
Documentation    testing arguments in robot framework

*** Variables ***
${arg1}
${arg2}


*** Test Cases ***
Argument demo
    [Documentation]    testing arguments
    Test Case 1    ${arg1}    ${arg2}


*** Keywords ***
Test Case 1
    [Documentation]    testing arguments
    [Arguments]    ${arg1}    ${arg2}
    Log To Console    ${arg1} ${arg2}
