FROM nginx:stable-alpine

# Copie le contenu du dossier html local vers le conteneur
COPY ./html /usr/share/nginx/html

# Modifie Nginx pour écouter sur le port 8080 (requis par Cloud Run)
RUN sed -i 's/listen  80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
