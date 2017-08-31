#NGINX Cookbook
This is the code repository for [NGINX Cookbook](https://www.packtpub.com/networking-and-servers/nginx-cookbook?utm_source=github&utm_medium=repository&utm_campaign=9781786466174), published by [Packt](https://www.packtpub.com/?utm_source=github). It contains all the supporting project files necessary to work through the book from start to finish.
## About the Book
This book also focuses on key NGINX features such as back-end SSL certificate verification, IPv6, log aggregation over network, thread pools, support for offloading I/O requests, and much more. This book also covers advanced topics such as covering bandwidth management, Docker container usage, performance tuning, OpenResty, and the NGINX Plus commercial features.
##Instructions and Navigation
All of the code is organized into folders. Each folder starts with a number followed by the application name. For example, Chapter02.



The code will look like the following:
```
server {
      listen 80;
      server_name server.yourdomain.com; 
      access_log /var/log/nginx/log/host.access.log combined;
         
      location / {
          root /var/www/html;
          index index.html; 
      }
}
```

The following is the list of software you require to go through the recipes covered in this book:

    NGINX
    PHP 7
    Ubuntu/CentOS/RHEL

##Related Products
* [Nginx HTTP Server - Third Edition](https://www.packtpub.com/networking-and-servers/nginx-http-server-third-edition?utm_source=github&utm_medium=repository&utm_campaign=9781785280337)

* [Nginx Troubleshooting](https://www.packtpub.com/networking-and-servers/nginx-troubleshooting?utm_source=github&utm_medium=repository&utm_campaign=9781785288654)

* [NGINX High Performance](https://www.packtpub.com/networking-and-servers/nginx-high-performance?utm_source=github&utm_medium=repository&utm_campaign=9781785281839)

###Suggestions and Feedback
[Click here](https://docs.google.com/forms/d/e/1FAIpQLSe5qwunkGf6PUvzPirPDtuy1Du5Rlzew23UBp2S-P3wB-GcwQ/viewform) if you have any feedback or suggestions.

