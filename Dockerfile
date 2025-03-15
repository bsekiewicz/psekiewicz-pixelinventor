FROM nginx:alpine

# Kopiowanie plików strony
COPY website /usr/share/nginx/html

# Kopiowanie konfiguracji Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Ustawienie poprawnych uprawnień
RUN chmod -R 755 /usr/share/nginx/html

# Expose port
EXPOSE 80

# Uruchomienie Nginx
CMD ["nginx", "-g", "daemon off;"]
