# Use the official Nginx image from Docker Hub
FROM nginx:alpine

WORKDIR /app
# Copy your HTML files into the Nginx web root directory
COPY . /usr/share/nginx/html

# Expose port 80 to allow external access
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]