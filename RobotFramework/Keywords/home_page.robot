*** Settings ***
Resource  ../Variables/home_page_ele.robot

*** Keywords ***
搜索框输入
    [Arguments]     ${input_value}
    input text  ${搜索框}     ${input_value}

点击百度一下按钮
    click button  ${百度一下}

百度搜索
    [Arguments]  ${input_value}
    搜索框输入   ${input_value}
    点击百度一下按钮
    sleep  3
