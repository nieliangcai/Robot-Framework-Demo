*** Settings ***
Documentation  部门管理稳定性测试
Library  Selenium2Library
Resource  ../../../Keywords/jibenxinxi_keywords.robot
Resource  ../../../Keywords/Login_keywords.robot
Test Setup  登录
Test Teardown  close browser


#Suite Setup  登录        #class
#Suite Teardown  close browser


*** Test Cases ***
testcase1 部门管理
    [Documentation]  验证部门管理页面是有内容的
    展开所有菜单
    进入部门管理
    验证部门管理页面元素

testcase2 人员信息维护
    [Documentation]  验证人员信息维护页面是有内容的
    展开所有菜单
    进入人员信息维护
    验证人员信息维护页面元素

testcase3 个人信息维护
    [Documentation]  验证人员信息维护页面是有内容的
    展开所有菜单
    进入个人信息维护
    验证个人信息维护页面元素

testcase4 线路管理
    [Documentation]  验证线路管理页面是有内容的
    展开所有菜单
    进入线路管理菜单页面
    验证线路管理页面元素

testcase5 车站及管辖维护
    [Documentation]  验证车站及管辖维护页面是有内容的
    展开所有菜单
    进入车站及管辖维护菜单页面
    验证车站及管辖维护页面元素

testcase6 人员调动审批
    [Documentation]  验证人员调动审批页面是有内容的
    展开所有菜单
    进入人员调动审批菜单页面
    验证人员调动审批页面元素