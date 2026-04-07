FROM nginx:alpine

# Remove as configs padrão para evitar conflitos
RUN rm /etc/nginx/conf.d/default.conf

# Copia sua config global
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Copia as definições de rotas e upstreams
COPY nginx/conf.d/ /etc/nginx/conf.d/

# Expõe a porta de entrada
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
