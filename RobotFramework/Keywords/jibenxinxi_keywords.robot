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

进入部门管理
    [Documentation]  点击部门管理菜单，并且验证打开后的页面元素
    sleep  5
    element is visible and click  ${部门管理}     30      部门管理菜单没能及时刷新
    wait until element is visible   ${page_frame}     30     部门管理页面的frame还没进入吧
    select frame            ${page_frame}            #切换frame
    sleep  5
#    log     判断是否进入frame，如果打印出来，进入frame。否则，没有进入frame
验证部门管理页面元素
    wait until element is visible      ${新增部门}         30     部门管理页面的新增部门按钮没有定位到
    wait until element is enabled      ${新增部门}        30     部门管理页面的新增部门按钮无法点击
    xpath should match x times         ${新增部门}       1
#    ${counts_of_page}    get matching xpath count        //*[@class="easyui-layout layout panel-noscroll"]//*[starts-with(@class,'panel layout-panel')]
#    should be equal as integers    ${counts_of_page}   3        基本信息-维护功能-部门管理页面，列表数目不正确
#    sleep  5
#    unselect frame     #退出frame
#    element is visible and click     //*[@class="tabs-close"]


进入人员信息维护
    [Documentation]  点击人员信息维护菜单，并且验证打开后的页面元素
    sleep   10
    element is visible and click   ${人员信息维护}                    #60  人员信息维护页面无法点击
    wait until element is visible   ${page_frame}     60     人员信息维护页面的frame还没进入吧
    select frame            ${page_frame}            #切换frame
    sleep  5

验证人员信息维护页面元素
    wait until element is visible   ${新增本部门人员}      30     人员信息维护页面验证字段没有显示
    xpath should match x times   ${新增本部门人员}     1
#    ${counts_of_page}    get matching xpath count        //*[@class="easyui-layout layout panel-noscroll"]//*[starts-with(@class,'panel layout-panel')]
#    should be equal as integers    ${counts_of_page}   8        基本信息-维护功能-人员信息维护菜单页面，列表数目不正确
#    unselect frame
#    element is visible and click     //*[@class="tabs-close"]
进入个人信息维护
    [Documentation]  点击个人信息维护菜单，并且验证打开后的页面元素
    sleep   10
    element is visible and click   ${个人信息维护}                    #60  人员信息维护页面无法点击
    wait until element is visible   ${page_frame}     60     个人信息维护页面的frame还没进入吧
    select frame            ${page_frame}            #切换frame
    sleep  5

验证个人信息维护页面元素
#    wait until element is visible   ${部门}      60     个人信息维护页面验证字段没有显示
    sleep   10
    wait until page contains element  ${部门}     60      个人信息维护页面验证字段(部门)没有显示
    ${bumen_value}     get value    ${部门}
    should be equal     ${bumen_value}        中国铁路南宁局集团有限公司

进入线路管理菜单页面
    [Documentation]  进入线路管理菜单，并且验证打开后的页面元素
    sleep   10
    element is visible and click   ${线路管理}      60  线路管理页面无法点击
    wait until element is visible   ${page_frame}     60     线路管理页面的frame还没进入吧
    select frame            ${page_frame}              #切换frame
    sleep  5

验证线路管理页面元素
#    wait until element is visible   ${部门}      60     个人信息维护页面验证字段没有显示
    sleep   10
    wait until page contains element  ${新增线路}     60      线路管理页面验证字段(新增线路)没有显示
    xpath should match x times        ${新增线路}       1

进入车站及管辖维护菜单页面
    [Documentation]  进入车站及管辖维护菜单，并且验证打开后的页面元素
    sleep   10
    element is visible and click   ${车站及管辖维护}      60  车站及管辖维护页面无法点击
    wait until element is visible   ${page_frame}     60     车站及管辖维护页面的frame还没进入吧
    select frame            ${page_frame}              #切换frame
    sleep  5

验证车站及管辖维护页面元素
#    wait until element is visible   ${部门}      60     个人信息维护页面验证字段没有显示
    sleep   10
    wait until page contains element  ${新增车站}     60      车站及管辖维护页面验证字段(新增线路)没有显示
    xpath should match x times        ${新增车站}       1

进入人员调动审批菜单页面
    [Documentation]  进入人员调动审批菜单，并且验证打开后的页面元素
    sleep   10
    element is visible and click   ${人员调动审批}      60  人员调动审批页面无法点击
    wait until element is visible   ${page_frame}     60     人员调动审批页面的frame还没进入吧
    select frame            ${page_frame}              #切换frame
    sleep  5

验证人员调动审批页面元素
#    wait until element is visible   ${部门}      60     个人信息维护页面验证字段没有显示
    sleep   10
    wait until page contains element  ${姓名文本}     60      车站及管辖维护页面验证字段(新增线路)没有显示
#    xpath should match x times        ${新增车站}       1
    ${name_text}    get text  ${姓名文本}
    should contain  ${name_text}  姓名:

element is visible and click
    [Documentation]  自建Keyword，功能：页面元素显示，并且点击
    [Arguments]  ${xpath}   ${time_out}=60    ${error_msg}=报错了
    log     1
    wait until element is enabled   xpath=${xpath}    ${time_out}    ${error_msg}
    log     2
    wait until element is visible   xpath=${xpath}    ${time_out}    ${error_msg}
    click element                   xpath=${xpath}