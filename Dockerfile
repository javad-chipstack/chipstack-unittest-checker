# Use the official MySQL image from Docker Hub
FROM mysql:latest

# Set environment variables (optional)
ENV MYSQL_ROOT_PASSWORD=regression
ENV MYSQL_DATABASE=regression
ENV MYSQL_USER=javad
ENV MYSQL_PASSWORD=regression

# Copy SQL scripts to initialize the database (optional)
# COPY ./init.sql /docker-entrypoint-initdb.d/

# Expose the MySQL port
EXPOSE 3306
