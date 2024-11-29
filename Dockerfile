# Use the latest Ubuntu image
FROM ubuntu:latest

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*


# Copy the default index.html file to the appropriate location
COPY index.html /var/www/html/index.html

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

