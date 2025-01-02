def calculator():
    print("Welcome to the Simple Calculator!")
    print("Type 'quit' to exit the calculator.")
    
    
    for i in range(100):
        expression = input("Enter a math expression (or 'quit' to exit): ")
        
        if expression.lower() == 'quit':
            print("Goodbye!")
            break
        
        
        try:
            result = eval(expression)
            print("The result is:", result)
        except:
            print("Error: Please enter a valid math expression.")
calculator()
https://github.com/PaulIfemene/Software-Engineering-Chapter.git