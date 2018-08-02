*** Settings ***
Library  Selenium2Library
Resource  ../Variables/jibenxinxi.robot

*** Keywords ***
点击基本信息并校验点击是否生效
    [Documentation]  校验是否点击基本信息
    click element                 ${jibenxinxi}                 #点击列表重点基本信息
    ${text_jibenxinxi}     get text     xpath=//*[@id="nav"]/li[1]/div/span[3]     #获取展开下方列表名称，用来比较点击是否成功
    should be equal      ${text_jibenxinxi}     基本信息
展开所有菜单
    [Documentation]   点击展开所有按钮功能
    wait until element is visible  ${zhankai}      30  展开按钮没有显示
    wait until element is enabled   ${zhankai}
    mouse over             ${zhankai}   #鼠标移动到展开上面
    ${count_open}  Get WebElements     ${menu}          #获取2个下拉菜单
    wait until element is visible   ${count_open[0]}        30         菜单没有及时展开
    click element     ${count_open[0]}                                 #点击展开所有按钮

点击部门管理并且验证页面元素
    [Documentation]  点击部门管理菜单，并且验证打开后页面元素
    sleep  5
    element is visible and click  ${部门管理}     30      部门管理菜单没能及时刷新
    wait until element is visible   ${部门管理_frame}     30     部门管理页面的frame还没进入吧
    select frame            ${部门管理_frame}            #切换frame
    sleep  5
#    log     判断是否进入frame，如果打印出来，进入frame。否则，没有进入frame
    wait until element is visible   xpath=//*[@class="easyui-layout layout panel-noscroll"]//*[starts-with(@class,'panel layout-panel')]            30     部门管理页面的frame还没进入吧
    wait until element is enabled   xpath=//*[@class="easyui-layout layout panel-noscroll"]//*[starts-with(@class,'panel layout-panel')]            30     部门管理页面的frame还没进入吧
    ${counts_of_page}    get matching xpath count        //*[@class="easyui-layout layout panel-noscroll"]//*[starts-with(@class,'panel layout-panel')]
    should be equal as integers    ${counts_of_page}   3        基本信息-维护功能-部门管理页面，列表数目不正确
    sleep  5
    unselect frame
    element is visible and click     //*[@class="tabs-close"]


点击人员信息维护并且验证页面元素
    [Documentation]  点击人员信息维护菜单，并且验证打开后页面元素
    sleep  5
    element is visible and click  //*[text()='人员信息维护']
    wait until element is visible   xpath=//*[@scrolling="auto"]     30     部门管理页面的frame还没进入吧
    select frame            xpath=//*[@scrolling="auto"]            #切换frame
    sleep  5
    wait until element is visible   //*[@class="easyui-layout layout panel-noscroll"]//*[starts-with(@class,'panel layout-panel')]      30     人员信息维护页面验证字段显示
    ${counts_of_page}    get matching xpath count        //*[@class="easyui-layout layout panel-noscroll"]//*[starts-with(@class,'panel layout-panel')]
    should be equal as integers    ${counts_of_page}   8        基本信息-维护功能-人员信息维护菜单页面，列表数目不正确
    unselect frame
    element is visible and click     //*[@class="tabs-close"]


element is visible and click
    [Documentation]  这是一个本页面调用的Keyword
    [Arguments]  ${xpath}   ${time_out}=30    ${error_msg}=报错了
    wait until element is visible   xpath=${xpath}    ${time_out}    ${error_msg}
    wait until element is enabled   xpath=${xpath}
    click element                   xpath=${xpath}