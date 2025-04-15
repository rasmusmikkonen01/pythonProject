# app.py
from flask import Flask
import os
import platform

# Luodaan Flask-sovellusinstanssi
app = Flask(__name__)

# Määritellään reitti juuriosoitteelle ('/')
@app.route('/')
def hello_world():
    # Noudetaan Pythonin versio ja käyttöjärjestelmätiedot
    python_version = platform.python_version()
    os_info = f"{platform.system()} {platform.release()}"
    # Palautetaan HTML-vastaus selaimelle
    return f"""
    <h1>Hello docker world</h1>
    """

# Ajetaan kehityspalvelin, jos tiedosto suoritetaan suoraan
if __name__ == '__main__':
    # Kuunnellaan kaikista verkkoliitännöistä (tärkeää Dockerissa) portissa 5000
    app.run(debug=True, host='0.0.0.0', port=5000)