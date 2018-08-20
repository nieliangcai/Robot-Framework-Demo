*** Settings ***
Documentation   专门用来封装关键字，执行关键字驱动
Library  Selenium2Library
Resource  ../Variables/Login_info.robot

*** Keywords ***
登录
    [Arguments]  ${login_usr}=${username}   ${login_pass}=${password}
    open browser  ${url}    chrome                              #南宁测试网址
    maximize browser window
    input text              ${login_user}    ${username}     #用户名
    input password          ${login_pwd}     ${password}     #密码
    click button            ${login_submit}                      #登录按钮
