*** Settings ***
Resource  ../Keywords/utils.robot
Resource  ../Keywords/home_page.robot
Library  ../Keywords/python_methods.py
Test Setup  打开百度
Test Teardown  关闭浏览器

*** Test Cases ***
case1
    [Tags]  P0
    print log  ${输出值}
    百度搜索  小心走火
    page should contain  博客园