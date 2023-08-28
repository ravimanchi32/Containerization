# Use the Ubuntu base image
FROM ubuntu

# Update package lists and install Nginx
RUN apt-get update && \
    apt-get install apache2 -y

# Copy the contents of the current directory into /var/www/html in the container
COPY . /var/www/html

# Set the working directory inside the container
WORKDIR /var/www/html

# Set an environment variable named "name" with the value "kani solutions"

# Start Apache when the container runs
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
