from flask import Flask
 
app = Flask(__name__)
 
 
@app.route('/')
def home():
    """
    home fun
    """
    return "<h1>Welcome<h1/>"
 
 
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
# Program to find the largest number
numbers = [10, 25, 56, 78, 34, 89, 12]  # Example list of numbers
 
# Using the max() function to find the largest number
largest_number = max(numbers)
 
# Print the result
print("The largest number is:", largest_number)
