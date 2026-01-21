*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}    http://localhost/Project/Guitar/home.php
${BROWSER}    Chrome

*** Test Cases ***

testcase1: Sort Price Low to High
    [Documentation]    This test sort price from low to high
    Open Browser       ${URL}   ${BROWSER}
    Scroll Element Into View                  xpath:/html/body/section[2]/div/div[2]/div[1]/form/div/div[1]/input[1]
    Click Element                             xpath:/html/body/section[2]/div/div[2]/div[1]/form/div/div[1]/input[1]
    Scroll Element Into View                  xpath:/html/body/section[2]/div/div[2]/div[2]/a[1]/div/img
    Wait Until Page Contains Element          xpath:/html/body/section[2]/div/div[2]/div[2]/a[1]/div/img
    Wait Until Page Contains Element          xpath:/html/body/section[2]/div/div[2]/div[2]/a[1]/div/p

testcase2: Sort Price High to Low
    [Documentation]    This test sort price from high to low
    Scroll Element Into View                  xpath:/html/body/section[2]/div/div[2]/div[1]/form/div/div[1]/input[2]
    Click Element                             xpath:/html/body/section[2]/div/div[2]/div[1]/form/div/div[1]/input[2]
    Scroll Element Into View                  xpath:/html/body/section[2]/div/div[2]/div[2]/a[1]/div
    Wait Until Page Contains Element          xpath:/html/body/section[2]/div/div[2]/div[2]/a[1]/div
    Wait Until Page Contains Element          xpath:/html/body/section[2]/div/div[2]/div[2]/a[1]/div/p

testcase3: Filter by Brand
    [Documentation]    This test filter by brand
    
    Scroll Element Into View       xpath://*[@id="Fender"]
    Click Element      xpath://*[@id="Fender"]
    Wait Until Page Contains Element    xpath://*[@id="Fender"]
    
    Scroll Element Into View       xpath://*[@id="Squier"]
    Click Element      xpath://*[@id="Squier"]
    Wait Until Page Contains Element    xpath://*[@id="Squier"]

    Scroll Element Into View       xpath://*[@id="Gibson"]
    Click Element      xpath://*[@id="Gibson"]
    Wait Until Page Contains Element    xpath://*[@id="Gibson"]

    Scroll Element Into View       xpath://*[@id="Epiphone"]
    Click Element      xpath://*[@id="Epiphone"]
    Wait Until Page Contains Element    xpath://*[@id="Epiphone"]

    Scroll Element Into View       xpath://*[@id="Ibanez"]
    Click Element      xpath://*[@id="Ibanez"]
    Wait Until Page Contains Element    xpath://*[@id="Ibanez"]

testcase4: Range of price
    [Documentation]    This test select range of price
    Scroll Element Into View       xpath://*[@id="minpricerange"]
    Scroll Element Into View       xpath://*[@id="maxpricerange"]
    Wait Until Element Is Visible   xpath://*[@id="minpricerange"]
    Wait Until Element Is Visible   xpath://*[@id="maxpricerange"]

    Execute JavaScript    document.querySelector('#minpricerange').value = 15000;
    Execute JavaScript    document.querySelector('#maxpricerange').value = 20000;

testcase5: Selected brand and then sort price low to high
    [Documentation]       This test select brand and then sort price low to high
    Execute JavaScript    document.querySelector('#minpricerange').value = 0;
    Execute JavaScript    document.querySelector('#maxpricerange').value = 30000;

    Scroll Element Into View       xpath://*[@id="Squier"]
    Click Element      xpath://*[@id="Squier"]
    Wait Until Page Contains Element    xpath://*[@id="Squier"]

    Scroll Element Into View       xpath://*[@id="Gibson"]
    Click Element      xpath://*[@id="Gibson"]
    Wait Until Page Contains Element    xpath://*[@id="Gibson"]

    Scroll Element Into View       xpath://*[@id="Epiphone"]
    Click Element      xpath://*[@id="Epiphone"]
    Wait Until Page Contains Element    xpath://*[@id="Epiphone"]
    
    Scroll Element Into View                  xpath:/html/body/section[2]/div/div[2]/div[1]/form/div/div[1]/input[1]
    Click Element                             xpath:/html/body/section[2]/div/div[2]/div[1]/form/div/div[1]/input[1]
    Scroll Element Into View                  xpath:/html/body/section[2]/div/div[2]/div[2]/a[1]/div/img
    Wait Until Page Contains Element          xpath:/html/body/section[2]/div/div[2]/div[2]/a[1]/div/img
    Wait Until Page Contains Element          xpath:/html/body/section[2]/div/div[2]/div[2]/a[1]/div/p

testcase6: Click to item information Page
    [Documentation]       This test click to item information Page
    Scroll Element Into View             xpath:/html/body/section[2]/div/div[2]/div[2]/a[1]
    Wait Until Element Is Visible         xpath:/html/body/section[2]/div/div[2]/div[2]/a[1]
    Click Element                        xpath:/html/body/section[2]/div/div[2]/div[2]/a[1]
    Wait Until Page Contains Element     xpath:/html/body/section[2]/div/div[1]/img

