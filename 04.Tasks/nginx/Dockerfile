FROM ubuntu:22.10
RUN apt update && apt install nginx -y
EXPOSE 80
WORKDIR /var/www
CMD ["nginx", "-g", "daemon off;"]
 
