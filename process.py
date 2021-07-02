log_file = open("um-server-01.txt") #OPENS THE SERVER FILE IN THE PYTHON FILE AND ASSIGNS IT TO LOG_FILE.


def sales_reports(log_file): #DEFINES A FUNCTION CALLED SALES_REPORTS THAT TAKES IN THE TXT FILE AS A PARAMATER.
    for line in log_file: #INSERTS LINE INTO THE TXT FILE AND STARTS THE FOR LOOP.
        line = line.rstrip() #STRIPS TXT INTO A STRING
        day = line[0:3] #DEFINES VARIABLE DAY AS THE INDEX OF [0] THAT TAKES IN 3 CHARACTERS
        if day == "Tue": #LOOKGS FOR 'TUE' AS A STRING AT THE INDEX OF [0]
            print(line) #PRINTS THE LINE IF IT MEETS THE FUNCTIONS CRITERIA.


sales_reports(log_file) #APPLIES THE FUNCTION TO THE .TXT FILE SET TO THE LOG_FILE VARIABLE.

log_file = open("um-server-01.txt") #OPENS THE SERVER FILE IN THE PYTHON FILE AND ASSIGNS IT TO LOG_FILE.




####PART TWO SWICTHES TUESDAY TO MONDAY####

def sales_reports(log_file):
    for line in log_file: 
        line = line.rstrip()
        day = line[0:3] 
        if day == "Mon": #SWITCHES TO LOOK FOR SALES INFO ON MONDAY
            print(line) 


sales_reports(log_file) 






def melon_count(log_file):
    for item in log_file:
        item = item.rstrip('/n').split(' ')
        melon = float(item[2])
    if melon > 10:
        print(item)
    else:
        print('fail')

melon_count(log_file)