# Solutions

## How do you inspect the version of Docker you are running via the command line?

```
docker version
```

## What command(s) did you use to get the NGiNX container running and showing the Welcome to NGiNX page?

> First, you need to create a Dockerfile and include the following, which will build an image from the NGINX ofiicial image, and start the nginx server:

```
FROM nginx:1.24.0

CMD ["nginx", "-g", "daemon off;"]
```

> Next, run the 'build' command to create the image:

```
docker build -t <app_name> .
```

> Finally, run the 'run' command, in which you can define the port to send from, and the port that the server will receive on. Using the -p tag will allow the container to run in the background:

```
docker run -d -p 8080:80 <app_name>
```

## With Docker, what does it mean when you "expose a port"?

> Exposing a port means to open a gateway into the container through the specified port, allowing for app to interact with the internet.

## What command(s) or approach did you use to get NGiNX showing your index.html file?

> First, in order to get your index.html file into the container, you need to use the 'copy' instruction inside the Dockerfile. The copy command takes two parameters, the first being the location of the directory containing the file(s) you want to copy, the second being the destination inside the container. For this example I used:

```
COPY nginx-website /usr/share/nginx/html
```

> Next, you need to build and run the container again, and the nginx server should now load the copied html file.

## Share a screenshot of your browser showing your index.html file

![Screenshot of the copied html file being run by the nginx server](/Screenshot%20from%202023-05-30%2014-09-57.png)

## After working with the NGiNX container, what is the output of your docker images command?

> The output of the docker images command shows the current version of the nginx container at the top, with the name I gave it, and all the previous versions labelled as 'none'.

## What command did you use to build your custom ubuntu-echo command?

> I used the docker build command, and used the -t flag to give it a name and a version:

```
docker run -t ubuntu-echo:1.0
```

## What command did you use to get your custom ubuntu-echo container running?

> I used the docker run command, without any additional arguments, using the name and version as above:

```
docker run ubuntu-echo:1.0
```

## What Dockerfile did you create for your NodeAPI container?

> I used the following in my docker file:

```
FROM node:20-alpine3.16
EXPOSE 3000
WORKDIR /app
COPY src .
RUN npm install
CMD ["node", "index.js"]
```

## What command did you use to build your Node API container?

```
docker build -t node-server:1.0 .
```
