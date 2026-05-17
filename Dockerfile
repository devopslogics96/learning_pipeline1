# Use a lightweight Nginx image
FROM nginx:alpine

# Copy index.html into the container
COPY index.html /tmp/index.html

# Move it to the Nginx web root
RUN ls -l /tmp && mv /tmp/index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
