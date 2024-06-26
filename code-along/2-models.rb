# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file
puts "There are #{Company.all.count} companies"

# 2. insert new rows in companies table
new_company = Company.new
new_company["name"] = "Apple"
new_company["city"] = "Chicago"
new_company["state"] = "IL"
new_company["url"] = "http://ss"
new_company.save
p new_company

company = Company.new
company["name"] = "XOM"
company["city"] = "NY"
company["state"] = "NY"
company["url"] = "http://aa"
company.save
p company


puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company
all_companies = Company.all
p all_companies

# 4. query companies table to find single row for Apple
c_company = Company.where({"state"=>"IL"})
p c_company
# 5. read a row's column value
apple = Company.find_by({"name" => "Apple"})
p apple
p apple["name"]
# 6. update a row's column value
xom = Company.find_by({"name"=>"XOM"})
p xom

xom["url"] = "http://bb"
xom.save


# 7. delete a row
x = Company.find_by({"name"=>"XOM"})
x.destroy

puts "There are #{Company.all.count} companies"