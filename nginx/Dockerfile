# Use the official Ubuntu Nginx image as the base
FROM ubuntu/nginx:latest

# Switch to root to install packages
USER root

# Update package lists and install iptables
RUN apt-get update && \
    apt-get install -y iptables && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/lib/nginx/body /var/lib/nginx/fastcgi /var/lib/nginx/proxy /var/lib/nginx/scgi /var/lib/nginx/uwsgi && \
    chown -R www-data:www-data /var/lib/nginx
# Switch back to the default Nginx user

#RUN iptables -A INPUT --proto icmp -j DROP

USER root
