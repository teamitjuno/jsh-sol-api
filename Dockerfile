# Use an official Nginx image as a parent image
FROM nginx:alpine

# Copy static assets from your 'public' folder to the default Nginx public folder
COPY ./public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container has provisioned.
CMD ["nginx", "-g", "daemon off;"]
