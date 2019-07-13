*** Settings ***
Library    SeleniumLibrary    

Suite Setup   Log    I am inside Test Suite Setup    
Suite Teardown     Log  I am inside Test Suite Teardown
Test Setup    Log    I am inside Test Setup           
Test Teardown    Log    I am inside Test teardown    

Default Tags   sanity


*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    hello world   
    
MysecondTest
    Log    2nd  
    Set Tags    reg
    
MytirdTest
    Log    3rd  
    
MyfourthTest
    Log    4th     
    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text    name=q    Ankit Kumar
    # Press Keys    name=q    ENTER
    # # Click Button    name=btnK    
    # Sleep    2    
    # Close Browser
    # Log    Test Completed    
    


# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser    ${URL}   chrome
    # Set Browser Implicit Wait    5
    # Input Text    id=txtUsername    @{CREENTIALS}[0]
    # Input Password    id=txtPassword   admin123
    # Click Button    id=btnLogin 
    # Click Element    id=welcome
    # Sleep    3    
    # Click Element    link=Logout 
    # Sleep    2    
    # Close Browser   
    # Log    Test Completed    
    # Log    This test was executed by %{username} on %{os}    

*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com/
@{CREENTIALS}  Admin   admin123
