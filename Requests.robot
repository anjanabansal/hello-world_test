***Settings****
Library               Collections
Library               RequestsLibrary

***Variables****


***Test Cases***
Test
	CreateSession	google	http://www.w3schools.com/webservices/tempconvert.asmx.	
	${get}=		Get Request		google		/
	Status should be	200		${get}
	