*** Settings ***
Documentation       A resourcce file with reusable keywords and variables
...
...                 The system specific keywords created here from our own
...                 domain specific language. They utilize keywords provided
...                 by the imporeted SeleniumLibrary.
Library     SeleniumLibrary
Library     OperatingSystem



*** Variables ***

${url}              https://www.target.com/
${browser_name}     Firefox



*** Keywords ***

# allows for multiple browser to be used for testing...current version of Chrome does not work with Robot!
Open Browser With url
    Create Webdriver    ${browser_name}     executable_path=resources/${browser_name}
    Go To               ${url}

Close Browser Session
    Delete All Cookies
    Close Browser

Wait Until Element Passed Is Visible
    [Arguments]         ${page_locator}
    Wait Until Element Is Visible      ${page_locator}

