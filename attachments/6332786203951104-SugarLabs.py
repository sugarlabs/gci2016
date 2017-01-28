while True:
    try:
        myDecimal = float(input("What decimal do you want to see rounded?"))
    except ValueError:
        print("Sorry, please put a proper decimal number.")
        continue
    else:break
print("Your rounded number is " + "{0:.2f}".format(myDecimal))
