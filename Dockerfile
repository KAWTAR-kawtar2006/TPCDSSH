# Utiliser Python slim pour légèreté
FROM python:3.11-slim

# Créer le répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances et installer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste de l’application
COPY . .

# Définir la commande de démarrage
CMD ["python", "app.py"]
