#Bazowy obraz z Pythonem
FROM python:3.10-slim

# Utwórz katalog roboczy
WORKDIR /app

# Skopiuj wymagania i zainstaluj zależności
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Skopiuj cały projekt
COPY . .

#  Otwórz port używany przez Streamlit
EXPOSE 8501

# Uruchom Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
