*** Settings ***
Library           Selenium2Library
Resource          基础关键字.robot
Resource          业务关键字.robot

*** Test Cases ***
login_success
    [Template]
    管理员登陆成功    admin    123456    退出
    关闭浏览器

login_fail
    [Template]
    管理员登陆成功    invalid    123456    请检查您的成员名或密码是否填写正确
    关闭浏览器
    管理员登陆成功    admin    invalid    请检查您的成员名或密码是否填写正确
    关闭浏览器
    管理员登陆成功    \    123456    请检查您的成员名或密码是否填写正确
    关闭浏览器
