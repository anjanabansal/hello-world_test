***Settings***
Library		SeleniumLibrary


****Variables*****
${URL}	https://www.google.com
${Browser}	Chrome
${Textfield}		//input[@name='q']
${searchkeyword}	robotframework
${Delay}			10
${TestDirectory}	"D:\New folder\Projects\src\test\java\test\"
${Screenshots}		"D:\New folder\Projects\src\test\java\test\Screenshots\"
${ExpectedResult}	robotframework - Google Search

***Settings***
Suite Setup	Open Browser	${URL}	${Browser}
Suite Teardown	Close Browser
Default tags	testcase	
Force tags		smoke
***Test Cases***
Open the Browser
	User should be able to open
	
Search
	Enter search criteria
#Close Browser
#	Close Browser

***Keywords***
Set Screenshot Directory	${Screenshots}
User should be able to open
	#[Setup]		${URL}	${Browser}
	Maximize Browser Window
	#Set Selenium Speed    ${DELAY}
	Set Selenium Implicit Wait	${DELAY}
	Set Selenium Timeout	${DELAY}
	Title should be		Google
	#[Teardown]
	
Enter search criteria
	Presskeys	${Textfield}	${searchkeyword}
	Presskeys	${Textfield}	RETURN
	Title should be 	${ExpectedResult}
	#[Teardown]	
	