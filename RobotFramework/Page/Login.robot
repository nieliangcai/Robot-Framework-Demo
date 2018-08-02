*** Settings ***
Documentation    登录模板制作
Library  Selenium2Library
Resource  ../Variables/Login_info.robot
Resource  ../Keywords/Login_keywords.robot
Library  ../Keywords/mail.py            #写发送邮件的功能;实现了可以发送多邮件的功能，貌似RF不好用啊

Suite Teardown   close browser

*** Test Cases ***
TestLogin
    [Documentation]  登录测试
    登录
    


