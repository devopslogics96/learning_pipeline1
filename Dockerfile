# Use a lightweight Nginx image
FROM nginx:alpine

# Copy index.html into the container
COPY index.html /tmp/index.html

# Move it to the Nginx web root
RUN mv /tmp/index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
