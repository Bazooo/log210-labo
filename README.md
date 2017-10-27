# LOG210

# Installation de docker
https://docs.docker.com/engine/installation/

# Installation de docker-compose
https://docs.docker.com/compose/install/

Pour rouler l'application dans le docker

```
# Build le docker qui contient l'application rails
docker-compose build

# Demarre le docker rails et db
docker-compose up

# Creer la db dans le serveur bd
docker-compose run web rake db:create
```

Accès au terminal de l'application rails


Noter le container id du container web avec la commande
```
docker ps
```

Ensuite utiliser la commande docker exec pour lancer un terminal bash
```
docker exec -it <container id> bash
```
Reset la db dehors de l'exécution
```
docker-compose run web rails db:reset
```
