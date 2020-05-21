****Settings****
Library		SeleniumLibrary
Library		Collections
***Variables***


***Test Cases****
TestLsit
	@{Var1}=	Create list		1	2	3
	FOR 	${i} 	IN 		@{Var1}
		Log 	${i}
	END
	
#Search
#	Set Selenium Timeout 	10
	
#	Open Browser	http://www.twitter.com		Chrome
##	Log		${list}
#	Close Browser
	
Search here
	&{d} =		Create Dictionary	browser= Chrome		url=http://www.twitter.com
	${v}=		Get From Dictionary		${d}	browser
	&{E}=	Copy Dictionary		${d}	TRUE