C_LONGINT:C283($count)

collection:=New collection:C1472("alpha"; "bravo"; "charlie"; "delta"; "uniform"; "foxtrot"; "november"; "juliett"; "quebec")
$count:=0
For each (item; collection)
	If (Length:C16(item)>5)
		$count:=$count+1
	End if 
End for each 
ALERT:C41(String:C10($count)+" words found!")