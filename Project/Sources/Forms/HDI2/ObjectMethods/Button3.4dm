If (btnTrace)
	TRACE:C157
End if 

For each (_property; vContact1)
	If (vContact2[_property]=Null:C1517) | (btnReplace=1)
		vContact2[_property]:=vContact1[_property]
	End if 
End for each 

vContact2:=vContact2
