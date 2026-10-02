If (btnTrace)
	TRACE:C157
End if 

For each (_property; vContact2)
	If (vContact1[_property]=Null:C1517) | (btnReplace=1)
		vContact1[_property]:=vContact2[_property]
	End if 
End for each 

vContact1:=vContact1