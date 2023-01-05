*** Settings ***
Documentation    Testing variable scopes


*** Variables ***
# ${VARIABLE_DEMO}    This is a GLOBAL variable


*** Test Cases ***
This is demo test 1
    [Documentation]    Scope testing
    ${variable_demo}    Set Variable    This is a Testcase variable
    Log    ${VARIABLE_DEMO}

This is test case 2
    [Documentation]    Scope testing
    Log    ${VARIABLE_DEMO}

This is demo test 3
    [Documentation]    Scope testing
    This Is A Demo Keyword


*** Keywords ***
This Is A Demo Keyword
    [Documentation]    Scope testing
    ${variable_demo}    Set Variable    this is a keyword variable
    Log    ${variable_demo}
