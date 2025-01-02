def main():
    print("This program calculates the future value")
    print("of a 10-year investment.")
    principal = eval(input("Enter the initial principal: "))
    apr = eval(input("Enter the annual interest rate: "))
    years = eval(input("Enter the number of year(s): "))
    for i in range(10):
     principal = principal * (1 + apr)
     print("The value in", years ,"years is:",principal)
main()