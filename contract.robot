*** Settings ***
Library           Selenium2Library
Resource          基础关键字.robot
Resource          业务关键字.robot

*** Test Cases ***
create_contract
    管理员登陆成功    admin    123456    退出
    进入frame
    contract_page
    create_contract
    关闭浏览器

dellete_contract
    管理员登陆成功    admin    123456    退出
    进入frame
    contract_page
    Click Element    xpath=//*[@id="contractList"]/tbody/tr[1]/td[11]/div/a
    Click Element    xpath=//*[@id="contractList"]/tbody/tr[1]/td[11]/div/ul/li[2]/a
    Confirm Action
    关闭浏览器
