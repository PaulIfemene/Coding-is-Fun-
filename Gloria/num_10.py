def pounds_kilograms():
    print("this is a Pounds to Kilograms Converter")
    print("This program converts weights from pounds to kilograms.")
    pounds = eval(input("Enter the weight in pounds: "))
    kilograms = pounds * 0.453592
    
    print(pounds, "pounds is approximately",kilograms, "kilograms.")
pounds_kilograms()
