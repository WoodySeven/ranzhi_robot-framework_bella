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
    Click Element    xpath=//*[@id="productList"]/tbody/tr[1]/td[8]/a[2]
    sleep    3s
    Confirm Action

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

删除联系人
    Click Element    xpath=//*[@id='contactList']/tbody/tr/td[8]/div/a
    Sleep    1s
    Click Element    xpath=//*[@id='contactList']/tbody/tr/td[8]/div/ul/li[2]/a
    Dismiss Alert

create_costomer
    Click Element    xpath=//*[@id="menuActions"]/a
    Input Text    xpath=//*[@id="name"]    深圳顺丰有限公司
    Input Text    xpath=//*[@id="contact"]    echo
    Input Text    xpath=//*[@id="phone"]    13531922265
    Select From List By Index    xpath=//*[@id="size"]    3
    sleep    3s
    Click Button    xpath=//*[@id="submit"]

delete_costomer
    Click Element    xpath=//*[@id="ajaxForm"]/table/tbody/tr[1]/td[11]/div/a
    sleep    3
    Click Element    xpath=//*[@id="ajaxForm"]/table/tbody/tr[1]/td[11]/div/ul/li[4]/a
    Confirm Action

create_order
    Click Element    xpath=//*[@id="menuActions"]/a
    sleep    3
    Click Element    xpath=//*[@id="customer_chosen"]/a
    Click Element    xpath=//*[@id="customer_chosen"]/div/ul/li[1]
    Click Element    xpath=//*[@id="product_chosen"]/ul
    Click Element    xpath=//*[@id="product_chosen"]/div/ul/li[1]
    Input Text    xpath=//*[@id="plan"]    5213
    sleep    3
    Click Button    xpath=//*[@id="submit"]

delete_order
    Click Element    xpath=/html/body/div[2]/div[2]/table/tbody/tr[1]/td[11]/div/a
    Click Element    xpath=/html/body/div[2]/div[2]/table/tbody/tr[1]/td[11]/div/ul/li[4]/a
    Confirm Action

create_contract
    Click Element    xpath=//*[@id="menuActions"]/a
    Click Element    xpath=//*[@id="customer_chosen"]/a
    Click Element    xpath=//*[@id="customer_chosen"]/div/ul/li[2]
    Input Text    xpath=//*[@id="name"]    33334
    sleep    4
    Click Element    xpath=//*[@id="begin"]
    Click Element    xpath=/html/body/div[3]/div[3]/table/tbody/tr[4]/td[5]
    Click Element    xpath=//*[@id="end"]
    Click Element    xpath=/html/body/div[4]/div[3]/table/tbody/tr[6]/td[3]
    sleep    3
    Click Element    xpath=//*[@id="submit"]

delete_contract
    Click Element    xpath=//*[@id="contractList"]/tbody/tr[1]/td[11]/div/a
    Click Element    xpath=//*[@id="contractList"]/tbody/tr[1]/td[11]/div/ul/li[2]/a
    Confirm Action
