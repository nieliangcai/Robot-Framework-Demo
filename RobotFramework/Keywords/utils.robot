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