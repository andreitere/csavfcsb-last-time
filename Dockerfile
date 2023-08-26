# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Copy the HTML file to the nginx container
COPY ./index.html /usr/share/nginx/html/index.html

# Make port 80 available to the world outside this container
EXPOSE 80

# Run Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
