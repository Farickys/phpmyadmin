FROM phpmyadmin/phpmyadmin:5.2-apache

# Set timezone
ENV TZ=Asia/Jakarta

# Set phpMyAdmin config
ENV PMA_ARBITRARY=1 \
    UPLOAD_LIMIT=100M \
    MEMORY_LIMIT=512M \
    MAX_EXECUTION_TIME=600

# Expose port
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=5s --start-period=30s --retries=3 \
  CMD curl -f http://localhost/ || exit 1
