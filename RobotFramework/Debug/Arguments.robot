*** Settings ***
Documentation    Suite description

*** Test Cases ***
Test title
    Provided precondition  1    2   3

*** Keywords ***
Provided precondition
    [Arguments]  ${a}   ${b}    ${c}
    log  ${a}
    log  ${b}
    log  ${c}