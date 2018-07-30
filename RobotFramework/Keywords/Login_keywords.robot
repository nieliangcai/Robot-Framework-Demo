*** Settings ***
Documentation   专门用来封装关键字，执行关键字驱动
Library  Selenium2Library

*** Keywords ***
登录
    open browser  ${url}    chrome                              #南宁测试网址
    maximize browser window
    input text              xpath=//*[@id="txtUserName"]    ${username}     #用户名
    input password          xpath=//*[@id="txtPassword"]    ${password}     #密码
    click button            xpath=//*[@id="btnLogin"]                       #登录按钮
    ${title}  get title                                                     #登录后，获取登录title，用来比较正确性
    should be equal  ${title}  电务生产调度指挥系统