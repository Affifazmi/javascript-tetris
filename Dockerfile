# Start with a lightweight base image
FROM debian:bullseye

# Set the working directory
WORKDIR /usr/share/nginx/html

# Install required packages (including nginx)
RUN apt-get update && apt-get install -y nginx && apt-get clean

# Copy the Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static files or app files to the working directory
COPY index.html . 
COPY stats.js .

# Expose the port Nginx will listen on
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

# https://github.com/Affifazmi/javascript-tetris
