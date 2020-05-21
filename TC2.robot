***Settings***
Library		SeleniumLibrary


****Variables*****
${URL}	https://www.google.com
${Browser}	Chrome
${Textfield}		//input[@name='q']
${searchkeyword}	robotframework
${Delay}			10
${TestDirectory}	"D:\New folder\Projects\src\test\java\test\"
${Screenshots}		"D:\RobotFramework\Screenshots\"
${ExpectedResult}	robotframework - Google Search
${i}	0
@{Range}	1	2	3
***Settings***
Suite Setup	Open Browser	${URL}	${Browser}
Suite Teardown	Close Browser
Default tags	testcase	
Force tags		smoke
***Test Cases***
Open the Browser
	User should be able to open
	
Search
	[Template]		Enter search criteria	
		robotframework
		test selenium
		test automation
#Loop
#	FOR 	${i} 	IN 		@{Range}
#	Run Keyword If	 ${i} > 10		Log		${i}	
#	Run Keyword Unless	 ${i} >10	Log	 "Less"			
#	END				
***Keywords***
Set Screenshot Directory	${Screenshots}
User should be able to open
	Maximize Browser Window
	#Set Selenium Speed    ${DELAY}
	Set Selenium Implicit Wait	${DELAY}
	Set Selenium Timeout	${DELAY}
	Title should be		Google
	
Enter search criteria 
	[Arguments]		${searchkeyword}
	Presskeys	${Textfield}	${searchkeyword}
	Presskeys	${Textfield}	RETURN
	Run Keyword And Continue On Failure		Title should be 	${ExpectedResult}
	Clear Element Text	${Textfield}
	