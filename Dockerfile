FROM nginx:stable-alpine

# On copie le contenu de votre dossier local "html" 
# directement dans l'image au moment du build
COPY ./html /usr/share/nginx/html

EXPOSE 80
