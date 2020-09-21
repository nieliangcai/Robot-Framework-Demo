### robot framework框架
    1. 安装robot framework
    2. robot framework与pycharm连接
    3. 建立robot framework项目，格式
        project
            ----Keywords    关键字    *** Keywords ***
            ----testcase    case     *** Test Cases ***
            ----Variables   变量值    *** Variables ***
    4. 工作原理
        a。 导包关键字    *** Settings ***
            Library：导入框架自带的插件或者自己写的py文件； eg：Selenium2Library、mail.py
            Resource：导入自己写的Robot关键字
        b。 数据分离     *** Variables ***
        c。 关键字       *** Keywords ***
        d。 case        *** Test Cases ***
        
        testcase引用Setting、Variables和Keywords来实现一个case
        运行的时候，指定项目即可，robot framework框架会自动去寻找带有*** Test Cases ***的并且符合运行命令的case来运行
    5. 日常运行，使用单线程运行即可，robot --help可以查看robot相关运行命令
    6. 使用多线程运行case， 使用pabot方式运行，pabot  --processes 2
        ---- robotframework-pabot