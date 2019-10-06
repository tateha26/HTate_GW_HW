form = ("Welcome to the House of Pies! Here are our pies: --------------------------------------- (1) Pecan, (2) Apple Crisp, (3) Bean, (4) Banoffee,  (5) Black Bun, (6) Blueberry, (7) Buko, (8) Burek,  (9) Tamale, (10) Steak")
    
print(form)
shopping = "y"
pie_list = ["Pecan", "Apple Crisp", "Bean", "Banoffee", "Black Bun", "Blueberry", "Buko", "Burek", "Tamale", "Steak"]
pie_purchases = [0,0,0,0,0,0,0,0,0,0]

x = "1"

for x in pie_list:
    Pecan = [x + 1]
    Apple_Crisp = "x" + "2"
    Bean = "x" + "3"
    Banoffee = "x" + "4"
    Black_Bun = "x" + "5"
    Blueberry = "x" + "6"
    Buko = "x" + "6"
    Burek = "x" + "7"
    Tamale = "x" + "8"
    Steak = "x" + "10"

while shopping == "y":
    print
    order = input("Which flavor would you like to order? Select the number representing your preferred flavor.\n")
    print(order)
    #purchases.append()

pie_dict = {"Pecan":("x" + "1"), "Apple_Crisp" : ("x" + "2"), "Bean": ("x" + "3"), "Banoffee": ("x" + "4"), "Black Bun": ("x" + "5"), "Blueberry": ("x" + "6"), "Buko": ("x" + "7"), "Burek": ("x" + "8"), "Tamale": ("x" + "9"), "Steak": ("x" + "10")} 
#######

for pie_choice in pie_purchases:
    pie_purchases[pie_choice] += 1

#for _ in purchases:
    
#for pies in pie_list:
   # print("Great! We'll have that {purchases} right out for you.")
    
#invitations = [
   # f"Dear {name}, please come to the wedding this Saturday!" for name in titlecased]

#for invitation in invitations:
    #print(invitation)

