FROM nginx:1.10.1-alpine

Add index.html /usr/share/nginx/html/index.html
Add logo.jpg /usr/share/nginx/html/logo.jpg
Add sample.css /usr/share/nginx/html/sample.css
Add sample.js /usr/share/nginx/html/sample.js

# Override the nginx start from the base container
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]