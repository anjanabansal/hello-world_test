***Settings***
Library	 SeleniumLibrary
Library		Collections
***Variables***
${LoginUsrName}		//*[@id="login_email_address"]
${passswd}		//*[@id="login_password"]
${LogBtn}		//button[text='Login']
${url}			https://app.mavenlink.com
${Browser}		Chrome
${user}			00bbarker@gmail.com			
${Pwd}			Password1
${Formname}		RLB Invoice

***Test Cases***
Login
	Set Selenium timeout	10
	Set Selenium ImplicitWait	20	
	Open Browser	${url}	${Browser}
	InputText	${LoginUsrName}			${user}
	InputText	${passswd}				${Pwd}
	Click Element	${LogBtn}
	Title Should Be		${Formname}	 	
***Keywords***
