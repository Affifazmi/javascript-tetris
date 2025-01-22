# Base image for serving static files
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy project files to the Nginx HTML directory
COPY . .

# Expose the default Nginx HTTP port
EXPOSE 80

# Nginx base image automatically runs the server
