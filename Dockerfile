FROM nginx:latest

# Copy index.html and the assets folder to the nginx directory
COPY index.html /usr/share/nginx/html/index.html
COPY assets/ /usr/share/nginx/html/assets/

# Debug line to verify file existence during build
RUN ls -l /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
