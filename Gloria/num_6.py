def main():
    print("This program calculates the future value of an investment with annual contributions.")
    
    yearly_investment = eval(input("Enter the amount to invest each year: "))
    apr = eval(input("Enter the annual interest rate (as a decimal, e.g., 0.05 for 5%): "))
    years = eval(input("Enter the number of years for the investment: "))

    total_accumulation = 0

    for i in range(years):
        total_accumulation = total_accumulation * (1 + apr)
        total_accumulation += yearly_investment

    print(f"The total accumulation after {years} years is: ${total_accumulation:.2f}")

main()
