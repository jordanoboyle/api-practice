# https://data.cityofchicago.org/resource/xzkq-xp2w.json
require "http"


 employee = {"name"=>"ABARCA, EMMANUEL",
"job_titles"=>"CONCRETE LABORER",
"department"=>"CHICAGO DEPARTMENT OF TRANSPORTATION",
"full_or_part_time"=>"F",
"salary_or_hourly"=>"HOURLY",
"typical_hours"=>"40",
"hourly_rate"=>"48.9"}

chicago_employee = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json").parse

# p chicago_employee

count = 0
chicago_employee.each do |emp|
  if emp["salary_or_hourly"] == "SALARY"
    p "Employee name: #{emp[]}"
    count += 1
  end
end 
p count 


#print data for one employee
# count number of employees
# count salaried employees
# print only salaried employee data
# 