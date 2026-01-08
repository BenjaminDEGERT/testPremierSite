FROM nginx:stable-alpine

# Copie de vos fichiers
COPY ./html /usr/share/nginx/html

# On remplace le port 80 par 8080 dans la config par défaut de Nginx
RUN sed -i 's/listen  80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

# On informe Cloud Run qu'on utilise le 8080
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
