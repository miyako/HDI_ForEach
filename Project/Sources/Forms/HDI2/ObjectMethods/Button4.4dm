var $property : Text
var $contact : Object

$contact:=New object:C1471("name"; "Martin"; "firstname"; "daniel"; "age"; 10; "ZIP"; 75018; "City"; "Paris")
For each ($property; $contact)
	If (Value type:C1509($contact[$property])=Is text:K8:3)
		$contact[$property]:=Uppercase:C13($contact[$property])
	End if 
End for each 