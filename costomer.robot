*** Settings ***
Library           Selenium2Library
Resource          基础关键字.robot
Resource          业务关键字.robot

*** Test Cases ***
create_costomer
    管理员登陆成功    admin    123456    退出
    进入frame
    costomer_page
    create_costomer
    关闭浏览器

delete_costomer
    管理员登陆成功    admin    123456    退出
    进入frame
    costomer_page
    delete_costomer
    关闭浏览器
