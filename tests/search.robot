#*** Settings ***
#Documentation   Home Page Search Tests
#Test Setup      Open Browser To Search Page
#Test Teardown   Close Browser
#Resource        imports.robot
#
#*** Variables ***
#${search_text}      Robot Framework WebPage
#
#*** Test Cases ***
#User can do a search from the home page
#    Input Text      ${search_input}    ${search_text}
#    Click Element   ${search_button}
#    Wait Until Page Contains Element     ${result_links}
#    Capture Page Screenshot     results.png


*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.w3schools.com/sql/

*** Test Cases ***
Open SQL W3Schools Page
    Open Browser    ${URL}    Chrome
    Title Should Be    W3Schools Online Web Tutorials
    Close Browser
