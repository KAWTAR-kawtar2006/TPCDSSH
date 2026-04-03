# Arrêter et supprimer l'ancien conteneur 
try { docker stop flask_app } catch {}
try { docker rm flask_app } catch {}

# Tirer la dernière image
docker pull usernameDOCKER/flask_devops_cd:latest  # Modifier usernameDOCKER par votre username de dockerhub

# Lancer le conteneur
# Si un conteneur existe déjà avec ce nom, ajoute --rm ou stop avant
docker run -d --name flask_app -p 5000:5000 usernameDOCKER/flask_devops_cd:latest # Modifier usernameDOCKER par votre username de dockerhub
