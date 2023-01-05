*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Test Case Browser Trainings
    [Documentation]    Training brwoser Keywords
    Open Browser    http://www.ebay.com    chrome    alias=eBayOnChrome
    Maximize Browser Window
    Sleep    3s
    Open Browser    https://www.nettiauto.com/    chrome    alias=nettiAtutoOnChrome
    Sleep    3s
    &{alias}    Get Browser Aliases
    Log    browser alias: ${alias}[eBayOnChrome]
    Log    browser alias: ${alias}[blankOnFF]
    @{browser_IDs}    Get Browser Ids
    Log    browser id: ${browser_IDs}[0]
    Log    browser id: ${browser_IDs}[1]
    Switch Browser    2
    Input Text    //input[@id='gh-ac']    Ninitendo
    Sleep    4s
    Switch Browser    ${alias}[eBayOnChrome]
    Sleep    4s
    Close All Browsers
