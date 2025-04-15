# calculator.py

def perform_sum(value1, value2):
  value1 = int(value1)
  value2 = int(value2)
  result = value1 + value2
  return f"Laskutoimituksen tulos: {result}"

def perform_minus(value1, value2):
  value1 = int(value1)
  value2 = int(value2)
  result = value1 - value2
  return f"Laskutoimituksen tulos: {result}"

def perform_product(value1, value2):
  value1 = int(value1)
  value2 = int(value2)
  result = value1* value2
  return f"Laskutoimituksen tulos: {result}"

def perform_deviation(value1, value2):
  value1 = int(value1)
  value2 = int(value2)
  result = value1 / value2
  return f"Laskutoimituksen tulos: {result}"

if __name__ == "__main__":
  _input = input("valitse laskutoimitus (+,-,*,/): ")
  value1 = int(input())
  value2 = int(input())
  if _input == "+":
    print(perform_sum(value1,value2))

  if _input == "-":
    print(perform_minus(value1,value2))

  if _input == "*":
    print(perform_product(value1,value2))

  if _input == "/":
    print(perform_deviation(value1,value2))