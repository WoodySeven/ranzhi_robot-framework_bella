*** Settings ***
Resource          基础关键字.robot
Resource          业务关键字.robot
Library           Selenium2Library

*** Test Cases ***
admin创建刘诗诗用户
    [Template]
    管理员登陆成功    admin    123456    退出
    添加成员并输入数据保存成功
    关闭浏览器

admin删除用户
    管理员登陆成功    admin    123456    退出
    关闭浏览器
