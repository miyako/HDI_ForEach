C_OBJECT:C1216(UK_emps)
C_OBJECT:C1216(emp)

If (btnTrace)
	TRACE:C157
End if 

// Create the entity selection
UK_emps:=ds:C1482.Employees.query("country='UK'")
// Browse the entity selection
For each (emp; UK_emps)
	emp.salary:=emp.salary*1.03  // raise the salary
	emp.save()  // save the result
End for each 

REDRAW:C174(LB)
