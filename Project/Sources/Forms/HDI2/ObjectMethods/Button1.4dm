var $item : Integer

vOdd:=0
vEven:=0
vUnder:=0
vBetween:=0
vOver:=0
vMultiple:=0

If (btnTrace)
	TRACE:C157
End if 

For each ($item; vNumCollection)
	
	If ($item%2=0)
		vEven:=vEven+1
	Else 
		vOdd:=vOdd+1
	End if 
	
	Case of 
		: ($item<10000)
			vUnder:=vUnder+1
		: ($item>20000)
			vOver:=vOver+1
		Else 
			vBetween:=vBetween+1
	End case 
	
	If ($item%7=0)
		vMultiple:=vMultiple+1
	End if 
	
End for each 
