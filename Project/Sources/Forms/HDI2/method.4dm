var $i : Integer

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(_TabTitles; 0)
		ARRAY TEXT:C222(_Descriptions; 0)
		
		READ ONLY:C145([INFO:1])
		ALL RECORDS:C47([INFO:1])
		ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
		
		SELECTION TO ARRAY:C260([INFO:1]TabTitle:3; _TabTitles; [INFO:1]Description:2; _Descriptions)
		
		OBJECT SET ENABLED:C1123(*; "btnApplySettings"; False:C215)
		OBJECT SET VISIBLE:C603(*; "docElements"; False:C215)
		
		HDI_UpdatePage(FORM Get current page:C276)
		
		vContact1:=New object:C1471("firstname"; "Gregory"; "lastname"; "Brown"; "age"; 20; "phone"; "0140414243"; "cell"; "0610111213")
		vContact2:=New object:C1471("firstname"; "Grégory"; "lastname"; "Brown-Smith"; "zipCode"; "75008"; "City"; "Paris")
		
		
		//**************************************************************
		
		vNumCollection:=New collection:C1472
		For ($i; 1; 100)
			vNumCollection.push(Random:C100)
		End for 
		
		vOdd:=0
		vEven:=0
		vUnder:=0
		vBetween:=0
		vOver:=0
		vMultiple:=0
		
		
		
		btnTrace:=True:C214
		btnSkip:=1
		btnReplace:=0
		
		
		employees:=ds:C1482.Employees.all()
		
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		HDI_UpdatePage(FORM Get current page:C276)
		
		
		
		
		
		
End case 

