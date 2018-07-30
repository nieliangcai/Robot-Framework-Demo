*** Settings ***
Documentation    登录模板制作
Library  Selenium2Library
Resource  ../Variables/Login_info.robot
Resource  ../Keywords/Login_keywords.robot
Suite Teardown   close browser

*** Test Cases ***
Test Login
    登录