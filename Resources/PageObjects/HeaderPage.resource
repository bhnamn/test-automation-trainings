*** Settings ***
Documentation    Here comes some description on the keyworrds
Library    SeleniumLibrary
Variables    ../WebElements.py


*** Variables ***
# ${search_text}    robot
# @{search_texts}  books  travel  robot  mobile
# &{search_texts}    Jone=books  Tommy=travel  Antti=robot  Jakke=mobile
# ${searchTextBox}    xpath://*[@id="gh-ac"]
# ${searchButton}    xpath://*[@id="gh-btn"]
# ${AdvancedLinkElement}    //*[@id="gh-as-a"]


*** Keywords ***
Input Search Text And Click Search
    [Documentation]    The keyword enters the searchkey into the search box and verifies the result
    [Arguments]     ${search_text}
    Input Text    ${HomePagesearchTextBox}    ${search_text}    clear=True
    Click Button    ${HomePagesearchButton}

Click On Advanced Search Link
    Click Element    ${HomePageAdvancedLinkElemen}
