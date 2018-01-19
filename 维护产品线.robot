*** Settings ***
Library           Selenium2Library
Resource          业务关键字.robot
Resource          基础关键字.robot

*** Test Cases ***
新增产品
    管理员登陆成功    admin    123456    退出
    进入frame
    进入产品页面
    新增产品输入数据保存成功
    关闭浏览器

新增产品线
    管理员登陆成功    admin    123456    退出
    进入frame
    进入产品页面
    新增产品线输入数据保存成功
    关闭浏览器

删除产品
    管理员登陆成功    admin    123456    退出
    进入frame
    进入产品页面
    删除产品成功
    关闭浏览器
