FROM phpmyadmin/phpmyadmin:latest

# Set working directory
WORKDIR /var/www/html

# Expose port
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost/ || exit 1

# Start Apache
CMD ["apache2-foreground"]
