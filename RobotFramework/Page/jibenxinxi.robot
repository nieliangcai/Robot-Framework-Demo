*** Settings ***
Library  Selenium2Library
Resource  ../Keywords/Login_keywords.robot
Resource  ../Variables/Login_info.robot
Resource  ../Keywords/jibenxinxi_keywords.robot

*** Test Cases ***
testcase 登录
    [Documentation]  先登录，再做其他操作；主要是验证页面是否显示
    登录

testcase 基本信息菜单页面验证
    [Documentation]     登录后，点击基本信息，校验列表是否展示基本信息list，再分别点击下面的子菜单，通过校验页面元素内容判断其正确性
    点击基本信息并校验点击是否生效         #点击基本信息操作
    展开所有菜单                           #展开左侧菜单树

testcase 部门管理页面稳定性验证
    点击部门管理并且验证页面元素                      #点击基本信息-维护功能-部门管理并且校验页面是否显示

testcase 人员信息维护页面稳定性验证
    点击人员信息维护并且验证页面元素


