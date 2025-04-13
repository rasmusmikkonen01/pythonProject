# Käytetään virallista Python-imageä pohjana
FROM python:3.11-slim

# Määritellään työskentelyhakemisto
WORKDIR /app

# Kopioidaan ohjelmatiedosto konttiin
COPY app.py .

# Suoritetaan ohjelma, kun kontti käynnistetään
CMD ["python", "app.py"]
