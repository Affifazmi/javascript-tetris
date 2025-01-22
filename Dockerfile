# Start with a lightweight base image
FROM debian:bullseye

# Install required packages (including nginx)
RUN apt-get update && apt-get install -y nginx && apt-get clean

# COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static files or app files to the Nginx document root
COPY index.html  /usr/share/nginx/html
COPY stats.js /usr/share/nginx/html

# Expose the port Nginx will listen on
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]


# https://github.com/Affifazmi/javascript-tetris
