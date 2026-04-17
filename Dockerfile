# Alpine o'rniga slim ishlating
FROM python:3.12-slim

WORKDIR /app

# Ba'zi kutubxonalar uchun zarur bo'lishi mumkin bo'lgan tizim paketlari
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip install --no-cache-dir -r req.txt

CMD ["python", "main.py"]