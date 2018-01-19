*** Settings ***
Resource          基础关键字.robot
Library           Selenium2Library

*** Keywords ***
管理员登陆成功
    [Arguments]    ${username}    ${password}    ${flag}
    打开浏览器并转到登录页面
    输入用户名和密码    ${username}    ${password}
    点击登录按钮
    验证登录成功    ${flag}

添加成员并输入数据保存成功
    Click Element    //*[@id="s-menu-superadmin"]/button
    select frame    id=iframe-superadmin
    Click Element    //*[@id="shortcutBox"]/div/div[1]/div/a/h3
    Input Text    id=account    liushishi
    Input Text    id=realname    刘诗诗
    Click Element    id=gender2
    Click Element    id=dept
    Click Element    //*[@id="dept"]/option[2]
    sleep    2
    Select From List By Index    id=role    10
    Input Password    id=password1    123456
    Input Password    id=password2    123456
    Input Text    id=email    12345@qq.com
    Click Button    id=submit

删除成员
    Click Element    //*[@id="s-menu-superadmin"]/button
    select frame    id=iframe-superadmin
    Click Element    //*[@id="shortcutBox"]/div/div[1]/div/a/h3
    Click Element    //*[@id="category5"]
    Click Element    xpath=/html/body/div/div/div/div[2]/div/div/table/tbody/tr[8]/td[11]/a[3]
    Confirm Action

新增产品输入数据保存成功
    Click Element    xpath=//*[@id="menuActions"]/a
    Sleep    3s
    Input Text    xpath=//*[@id="name"]    行车记录仪
    Input Text    xpath=//*[@id="code"]    xcjly_01
    Select From List By Index    xpath=//*[@id="type"]    1
    Select From List By Index    xpath=//*[@id='status']    1
    Sleep    3s
    Click Button    xpath=//*[@id="submit"]

新增产品线输入数据保存成功
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[2]/a
    Sleep    3s
    Input Text    xpath=//*[@id='values[]']    测试
    Click Element    xpath=//*[@id='submit']

删除产品成功

添加联系人输入数据保存成功
    Click Element    xpath=//*[@id="menuActions"]/a
    Input Text    xpath=//*[@id="realname"]    Bella
    sleep    3s
    Click Element    xpath=//*[@id="customer_chosen"]/a
    Click Element    xpath=//*[@id="customer_chosen"]/div/ul/li[2]
    Click Element    xpath=//*[@id="gender1"]
    Input Text    xpath=//*[@id="dept"]    测试部门
    Input Text    xpath=//*[@id="title"]    测试软件工程师
    Input Text    xpath=//*[@id="join"]    2016-10-12
    Input Text    xpath=//*[@id="email"]    312@qq.com
    Input Text    xpath=//*[@id="mobile"]    1008612
    Input Text    xpath=//*[@id="phone"]    15012959913
    Input Text    xpath=//*[@id="fax"]    243513312
    Input Text    xpath=//*[@id="qq"]    96060321
    Input Text    xpath=//*[@id="desc"]    华润公司
    Click Element    xpath=//*[@id="submit"]
