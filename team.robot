*** Settings ***
Library           Selenium2Library
Resource          业务关键字.robot
Resource          基础关键字.robot

*** Test Cases ***
create_boge
    管理员登陆成功    admin    123456    退出
    Click Element    xpath=//*[@id="s-menu-4"]/button
    Select Frame    id=iframe-4
    Click Element    xpath=//*[@id="mainNavbar"]/div[2]/ul/li[3]/a
    sleep    3
    Click Element    xpath=/html/body/div/div/div[1]/div[1]/a
    Click Element    xpath=//*[@id="categories_chosen"]/ul
    Click Element    xpath=//*[@id="categories_chosen"]/ul/li[1]
    sleep    3
    Click Element    xpath=//*[@id="users_chosen"]/ul
    Click Element    xpath=//*[@id="users_chosen"]/div/ul/li[1]
    sleep    3
    Click Element    xpath=//*[@id="groupTR"]/td/label[5]
    Input Text    xpath=//*[@id="title"]    周末啦
    Select Frame    xpath=//*[@id="ajaxForm"]/table/tbody/tr[6]/td/div[2]/div[2]/iframe
    sleep    3
    Input Text    xpath=/html/bodyr[6]/td    今天周五啦，快要周末哦
