''' Assignment - You have a list of employee records,
                and you need to create a new list that
                contains the names of employees who work in the 'Sales' department,
                all in uppercase.'''
#sample data
employees = [ {"name": "John Doe", "department": "Sales"},
              {"name": "Jane Smith", "department": "Marketing"},
              {"name": "Emily Johnson", "department": "Sales"},
              {"name": "Michael Brown", "department": "HR"} ]

#Using List Comprehension
sales_data = [emp["name"].upper() for emp in employees if emp["department"] == "Sales"]     #Storing values
print(sales_data)           #Printing data

"""Output"""
"""['JOHN DOE', 'EMILY JOHNSON']"""