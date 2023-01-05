*** Settings ***
Documentation    Basic functional tests on the eBay website
Resource    ../../Resources/PageObjects/HeaderPage.resource
Resource    ../../Resources/PageObjects/SearchResultsPage.robot
Resource    ../../Resources/CommonFunctionalities.robot

Test Setup    CommonFunctionalities.Setup The Browser
Test Teardown    CommonFunctionalities.Teardown Test Case


*** Variables ***


*** Test Cases ***
Verify Basic Search Functionality on eBay 1
    [Documentation]    This test case verfies the basic search on eBay
    [Tags]    eBayFunctional
    HeaderPage.Input Search Text And Click Search    robot
    SearchResultsPage.Filter Results By Condition
    SearchResultsPage.Verify Filter Results

Verify Basic Search Functionality on eBay 2
    [Documentation]    This test case verfies the basic search on eBay
    [Tags]    eBayFunctional
    HeaderPage.Input Search Text And Click Search    books
    SearchResultsPage.Filter Results By Condition
    SearchResultsPage.Verify Filter Results
