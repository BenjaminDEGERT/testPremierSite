FROM nginx:stable-alpine

# 1. Copie de vos fichiers HTML
COPY ./html /usr/share/nginx/html

# 2. Modification de la configuration Nginx pour écouter sur 8080 au lieu de 80
# Cloud Run exige que le conteneur écoute sur le port défini par la plateforme (8080 par défaut)
RUN sed -i 's/listen  80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

# 3. Exposition du port 8080
EXPOSE 8080

# 4. Lancement de Nginx
CMD ["nginx", "-g", "daemon off;"]
