FROM nginx:alpine

# Create a custom index.html with the message
RUN echo '<html><body style="display: flex; justify-content: center; align-items: center; height: 100vh; font-family: Arial, sans-serif; font-size: 24px;"><h1>Hola MundosE</h1></body></html>' > /usr/share/nginx/html/index.html

# Copy any additional files from your repository to the Nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]