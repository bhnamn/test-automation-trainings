*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Test Case 1
    [Documentation]    Demonstarating Web Locators in RF
    Open Browser    http://www.ebay.com    chrome    alias=eBayHomePageChrome
    Maximize Browser Window
    Click Link    link:Start selling
    Sleep    4s
    Close Browser
