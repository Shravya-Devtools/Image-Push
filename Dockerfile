FROM nginx:alpine

# Replace the default NGINX welcome page with a custom message
RUN echo "<h1>Hello from EKS Test Deployment!</h1><p>Image deployed via GitHub Actions & Octopus Deploy.</p>" > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
