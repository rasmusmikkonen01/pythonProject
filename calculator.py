# calculator.py

def perform_calculation():
  """Suorittaa yksinkertaisen operaation ja palauttaa tuloksen merkkijonona."""
  result = 10 + 5
  return f"Laskutoimituksen tulos: {result}"

if __name__ == "__main__":
  output_string = perform_calculation()
  print(output_string) # Tulostetaan tulos vakiotulosteeseen