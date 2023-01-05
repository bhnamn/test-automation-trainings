*** Settings ***
Documentation    Robot Framework self training tutorial
Library    SeleniumLibrary


*** Variables ***



*** Test Cases ***
Google Search Test Cases
    [Documentation]    Google Search page testing
    [Tags]    Regression

    Open Browser    http://www.google.com    chrome


*** Keywords ***