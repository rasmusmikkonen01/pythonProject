# Dockerfile

# 1. Valitse pohja-image: Virallinen Python 3.10 -image (slim-versio on pienempi)
FROM python:3.10-slim

# 2. Aseta työskentelyhakemisto kontin sisällä
#    Kaikki seuraavat komennot suoritetaan tässä hakemistossa
WORKDIR /app

# 3. Kopioi riippuvuustiedosto ensin
#    Tämä hyödyntää Dockerin välimuistia: jos requirements.txt ei muutu,
#    riippuvuuksia ei tarvitse asentaa uudelleen joka buildissa.
COPY requirements.txt .

# 4. Asenna riippuvuudet pip-työkalulla
#    --no-cache-dir pienentää imagea hieman, koska välimuistia ei tallenneta
RUN pip install --no-cache-dir -r requirements.txt

# 5. Kopioi loput sovelluksen tiedostot (tässä tapauksessa vain app.py) työhakemistoon
COPY app.py .

# 6. Kerro Dockerille, että kontti kuuntelee porttia 5000 ajon aikana
EXPOSE 5000

# 7. Määrittele komento, joka ajetaan kun kontti käynnistetään
#    Tämä käynnistää Flask-kehityspalvelimen
CMD ["python", "app.py"]