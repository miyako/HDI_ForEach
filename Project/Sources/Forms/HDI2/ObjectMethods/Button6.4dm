If (btnTrace)
	TRACE:C157
End if 

For each (property; vContact2)
	If (vContact1[property]=Null:C1517) | (btnReplace=1)
		vContact1[property]:=vContact2[property]
	End if 
End for each 

vContact1:=vContact1