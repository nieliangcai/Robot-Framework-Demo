*** Variables ***
${jibenxinxi}     xpath=//*[@id="roottitle"]/div[1]             #点击列表重点基本信息
${zhankai}        xpath=//*[@class="l-btn-text icon-expand"]     #鼠标移动到展开上面
${menu}           //*[@class="menu-text"]                          #展开的两个菜单
${部门管理}    //*[text()='部门管理']
${page_frame}   xpath=//*[@scrolling="auto"]                #frame
${新增部门}      //*[text()="新增部门"]

${人员信息维护}     //*[text()='人员信息维护']
${新增本部门人员}      //*[text()="新增本部门人员"]

${个人信息维护}       //*[text()='个人信息维护']
${部门}                     //*[@name="model.orgname"]

${线路管理}       //*[text()='线路管理']
${新增线路}       //*[text()='新增线路']

${车站及管辖维护}      //*[text()='车站及管辖维护']
${新增车站}       //*[text()='新增车站']

${人员调动审批}      //*[text()='人员调动审批']
${姓名文本}       //*[@id="poersonId"]/..//tr