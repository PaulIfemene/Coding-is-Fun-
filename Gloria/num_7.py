def main():
    print("This program calculates the future value of an investment with compounding interest.")
    
    
    principal = eval(input("Enter the initial principal: "))
    rate = eval(input("Enter the annual nominal interest rate (e.g., 0.03 for 3%): "))
    periods = eval(input("Enter the number of times the interest is compounded each year: "))
    years = eval(input("Enter the number of years for the investment: "))

    
    total_periods = years * periods

    for i in range(total_periods):
        principal = principal * (1 + rate / periods)

    # Print the final value after all periods
    print(f"The value of the investment after" ,years, "years is:",principal)

main()
