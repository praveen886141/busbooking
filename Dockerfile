# Use an official lightweight web server image
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy your frontend files into the nginx web root
COPY . .

# Expose port 80 (default for nginx)
EXPOSE 3000

# Nginx starts automatically with the container
CMD ["nginx", "-g", "daemon off;"]
