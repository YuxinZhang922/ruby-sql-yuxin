# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database
puts "#{Contact.all.count}"
puts "#{Company.all.count}"


# 1. insert new rows in the contacts table with relationship to a company
apple = Company.find_by({"name" => "Apple"})
contact = Contact.new
contact["first_name"] = "a"
contact["last_name"]= "b"
contact["email"]= "c"
contact["company_id"] = apple["id"]
contact.save

contact = Contact.new
contact["first_name"] = "d"
contact["last_name"]= "e"
contact["email"]= "f"
contact["company_id"] = apple["id"]
contact.save

contact = Contact.new
contact["first_name"] = "g"
contact["last_name"]= "h"
contact["email"]= "i"
contact["company_id"] = amazon["id"]
contact.save


# 2. How many contacts work at Apple?

apple_contacts = Contacts.where({"company_id" => apple[id]})
# 3. What is the full name of each contact who works at Apple?
for employee in apple_contacts
    first_name = employee["first_name"]
    last_name = employee['last_name']
    p "#{first_name} #{last_name}"
    