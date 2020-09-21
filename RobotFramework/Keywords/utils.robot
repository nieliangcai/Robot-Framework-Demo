*** Settings ***
Resource  ../Variables/all_values.robot
Library  Selenium2Library

*** Keywords ***
打开百度
    open browser  ${URL}    chrome
    set browser implicit wait  15
    maximize browser window

关闭浏览器
    close browser

用Chrome浏览器打开网站PC端
    ${options}     EVALUATE    sys.modules['selenium.webdriver'].ChromeOptions()   sys,selenium.webdriver
    ${executor}    EVALUATE    str('http://xxxx:80/wd/hub')
    call method    ${options}   add_argument    --start-maximized
    call method    ${options}   add_argument    --user-agent\=iAutotestMobile
    call method    ${options}   add_argument    --dns-prefetch-disable
    ${caps}        EVALUATE     $options.to_capabilities()
    create webdriver  Remote    command_executor=${executor}    desired_capabilities=${caps}
    open browser  ${URL}    chrome
    set browser implicit wait  15
    maximize browser window

用Chrome浏览器打开网站H5端
    [Documentation]  本地使用iPhone X进行调试    针对filters的选项，在非手机模式无法正常点击，width必须为int类型，也可以用evaluate转int
    ${device_Metrics}=    Create Dictionary    width=${400}    height=${800}    pixelRatio=${2.0}    deviceName=iPhone X    #user-agent=Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1
    ${devname}    Create Dictionary    deviceMetrics=${device_Metrics}
    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --user-agent\=Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1
    Call Method    ${options}    add_experimental_option    mobileEmulation    ${devname}
    Call Method    ${options}    add_argument    --dns-prefetch-disable
    Call Method    ${options}    add_argument    --incognito
    Call Method    ${options}    add_argument    --disable-javascript
    ${caps}    Evaluate    $options.to_capabilities()
    ${executor}    Evaluate    str('http://xxxx:80/wd/hub')
    Comment    Create Webdriver    Remote    command_executor=${executor}    desired_capabilities=${caps}
    Comment    Go To    ${URL}
    Create Webdriver    Chrome    chrome_options=${options}
    Go To    ${URL}