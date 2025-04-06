"""Assignment - You have a list of email addresses
                and you want to extract the domain part (the part after '@')
                from each email address. Example Data: """
#sample data
emails = [ "alice@example.com", "bob@sample.org", "charlie@mydomain.net" ]

#List Comprehension using
domain_part = [mail.split('@')[1] for mail in emails]   # storing into variable
print(domain_part)      #Printing that list

'''Output'''
"""['example.com', 'sample.org', 'mydomain.net']"""