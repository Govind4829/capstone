# Use the official Apache HTTP server image as the base
FROM httpd:latest

# Copy your application files to the Apache server's root directory
COPY ./build /usr/local/apache2/htdocs/

# Expose port 80 to access the Apache server
EXPOSE 80

# The Apache2 service will run by default with this image

