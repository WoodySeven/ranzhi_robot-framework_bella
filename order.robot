*** Settings ***
Library           Selenium2Library
Resource          基础关键字.robot
Resource          业务关键字.robot

*** Test Cases ***
create
    管理员登陆成功    admin    123456    退出
    进入frame
    order_page
    create_order
    关闭浏览器

delete
    管理员登陆成功    admin    123456    退出
    进入frame
    order_page
    delete_order
