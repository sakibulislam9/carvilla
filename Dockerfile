# Use the official Nginx Alpine image as a base
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the static website files (HTML, CSS, JS, etc.) to the container
COPY sourcecode/ .

# Expose port 80 to allow traffic to the Nginx server
EXPOSE 80

# Start Nginx in the foreground (default behavior)
CMD ["nginx", "-g", "daemon off;"]