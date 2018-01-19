*** Settings ***
Library           Selenium2Library

*** Variables ***
${base_url}       http://localhost/ranzhi/www
&{admin_info}     username=admin    password=123456    job=admin

*** Keywords ***
打开浏览器并转到登录页面
    Open Browser    ${base_url}    Chrome
    Set Browser Implicit Wait    5s

输入用户名和密码
    [Arguments]    ${username}    ${password}
    Input Text    id=account    ${username}
    Input Password    id=password    ${password}

点击登录按钮
    Click Element    id=submit

验证登录成功
    [Arguments]    ${flag}
    Page Should Contain    ${flag}

关闭浏览器
    Close Browser

进入frame
    Click Element    xpath=//*[@id="s-menu-1"]/button/img
    Select Frame    id=iframe-1
    Sleep    3s

进入产品页面
    Click Element    xpath=//*[@id="mainNavbar"]/div[2]/ul/li[7]/a

进入联系人页面
    Click Element    xpath=//*[@id="mainNavbar"]/div[2]/ul/li[5]/a

costomer_page
    Click Element    xpath=//*[@id="mainNavbar"]/div[2]/ul/li[4]/a

order_page
    Click Element    xpath=//*[@id="mainNavbar"]/div[2]/ul/li[2]/a

contract_page
    Click Element    xpath=//*[@id="mainNavbar"]/div[2]/ul/li[3]/a
