# This will open the text file allowing 
# it to be used later on with the following function
log_file = open("um-server-01.txt")

# To change the day that it will listen for 
# all you have to change is 'Tue' to 'Mon'
def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)

# It works.

sales_reports(log_file)
