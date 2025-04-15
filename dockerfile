# Dockerfile

# 1. Valitse pohja-image
FROM python:3.10-slim

# 2. Aseta työskentelyhakemisto kontin sisällä
WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

# 3. Kopioi Python-skripti työhakemistoon
COPY calculator.py .

# 4. Määrittele komento, joka ajetaan kun kontti käynnistetään
#    Tämä ajaa suoraan python-skriptin
CMD ["python", "calculator.py"]

CMD ["tail", "-f", "/dev/null"]
