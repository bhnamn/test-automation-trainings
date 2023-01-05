*** Settings ***
Documentation    Here comes some description about the keyword functions
Library    SeleniumLibrary


*** Variables ***
${env}    qa
&{url}    qa=http://www.ebay.com  uat=http://uat.demo.com  dev=http://www.dev.demo.com
${browser}    chrome


*** Keywords ***
Setup The Browser
    [Documentation]    The keyword opens the given browser to the given url
    Open Browser    ${url.${env}}    ${browser}
    Maximize Browser Window
    Sleep    1s

Teardown Test Case
    [Documentation]    The keyword closes the open browser
    Close Browser
