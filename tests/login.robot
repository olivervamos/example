*** Settings ***
Resource    ../resources/keywords.robot
Suite Setup    OpenBrowser    about:blank    chrome
Suite Teardown    CloseAllBrowsers

*** Test Cases ***

login
    [Documentation]    Verifies that login works
   GoTo   https://www.saucedemo.com/
   Get users credentials
   Log into    ${STANDARD_USER_LOGIN}    ${PASSWORD}