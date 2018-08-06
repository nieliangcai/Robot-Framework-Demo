*** Variables ***
${url}  http://115.29.234.80:8110/
${username}  admin
${password}  888888

${login_user}     xpath=//*[@id="txtUserName"]          #账号
${login_pwd}      xpath=//*[@id="txtPassword"]          #密码
${login_submit}   xpath=//*[@id="btnLogin"]             #登录按钮