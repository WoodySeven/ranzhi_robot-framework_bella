*** Settings ***
Library           Selenium2Library
Resource          基础关键字.robot
Resource          业务关键字.robot

*** Test Cases ***
新增联系人
    管理员登陆成功    admin    123456    退出
    进入frame
    进入联系人页面
    添加联系人输入数据保存成功
    关闭浏览器
