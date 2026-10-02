If (btnTrace)
	TRACE:C157
End if 

For each (property; vContact1)
	If (vContact2[property]=Null:C1517) | (btnReplace=1)
		vContact2[property]:=vContact1[property]
	End if 
End for each 

vContact2:=vContact2
