# nodejs-proj-01
Create an application using node js 

Enter into project
````git
cd noddejs-proj-01
``````

Create the following file 
````git
nano package.json
``````

Add the following information about the project, including its name, author, license, entrypoint, and dependencies. Be sure to replace the author information with your own name and contact details:

``````git
{
  "name": "nodejs-image-demo",
  "version": "1.0.0",
  "description": "nodejs image demo",
  "author": "Sammy the Shark <sammy@example.com>",
  "license": "MIT",
  "main": "app.js",
  "keywords": [
    "nodejs",
    "bootstrap",
    "express"
  ],
  "dependencies": {
    "express": "^4.16.4"
  }
}
``````
To install your project’s dependencies, run the following command:
`````git
npm install
`````

Add the git ignore file - 
- Press CTRL+ Shift+P 
- select nodejs gitignore file  and add

Create the Application file 
``````git
nano app.js
``````

write the following thing to that file  /nodejs-proj-01/app.js
``````git
const express = require('express');
const app = express();
const router = express.Router();

const path = __dirname + '/views/';
const port = 8080;
``````

set the route 
```git
router.use(function (req,res,next) {
  console.log('/' + req.method);
  next();
});

router.get('/', function(req,res){
  res.sendFile(path + 'index.html');
});

router.get('/sharks', function(req,res){
  res.sendFile(path + 'sharks.html');
});
``````

Finally, mount the router middleware and the application’s static assets and tell the app to listen on port 8080:
```git
app.use(express.static(path));
app.use('/', router);

app.listen(port, function () {
  console.log('Example app listening on port 8080!')
})
```
Review the complete code of /nodejs-proj-01/app.js :
``````git
const express = require('express');
const app = express();
const router = express.Router();

const path = __dirname + '/views/';
const port = 8080;

router.use(function (req,res,next) {
  console.log('/' + req.method);
  next();
});

router.get('/', function(req,res){
  res.sendFile(path + 'index.html');
});

router.get('/sharks', function(req,res){
  res.sendFile(path + 'sharks.html');
});

app.use(express.static(path));
app.use('/', router);

app.listen(port, function () {
  console.log('Example app listening on port 8080!')
})
``````

Next, add some static content to the application. Start by creating the views directory:
```git
mkdir views
````

Open the landing page file, index.html:
```git
nano views/index.html
``````

Add the following code to the file, which will import Boostrap and create a jumbotron component with a link to the more detailed sharks.html info page:
```git
<!DOCTYPE html>
<html lang="en">

<head>
    <title>About Sharks</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="css/styles.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Merriweather:400,700" rel="stylesheet" type="text/css">
</head>

<body>
    <nav class="navbar navbar-dark bg-dark navbar-static-top navbar-expand-md">
        <div class="container">
            <button type="button" class="navbar-toggler collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span>
            </button> <a class="navbar-brand" href="#">Everything Sharks</a>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav mr-auto">
                    <li class="active nav-item"><a href="/" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item"><a href="/sharks" class="nav-link">Sharks</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="jumbotron">
        <div class="container">
            <h1>Want to Learn About Sharks?</h1>
            <p>Are you ready to learn about sharks?</p>
            <br>
            <p><a class="btn btn-primary btn-lg" href="/sharks" role="button">Get Shark Info</a>
            </p>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <h3>Not all sharks are alike</h3>
                <p>Though some are dangerous, sharks generally do not attack humans. Out of the 500 species known to researchers, only 30 have been known to attack humans.
                </p>
            </div>
            <div class="col-lg-6">
                <h3>Sharks are ancient</h3>
                <p>There is evidence to suggest that sharks lived up to 400 million years ago.
                </p>
            </div>
        </div>
    </div>
</body>

</html>
```

you will create this style sheet at the end of this step.

Save and close the file when you are finished.

With the application landing page in place, you can create your shark information page, sharks.html, which will offer interested users more information about sharks
create a sharks.html
``````git
nano views/sharks.html
``````

Add the following content to tha file - nodejs-proj-01/views/sharks.html
``````git
<!DOCTYPE html>
<html lang="en">

<head>
    <title>About Sharks</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="css/styles.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Merriweather:400,700" rel="stylesheet" type="text/css">
</head>
<nav class="navbar navbar-dark bg-dark navbar-static-top navbar-expand-md">
    <div class="container">
        <button type="button" class="navbar-toggler collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span>
        </button> <a class="navbar-brand" href="/">Everything Sharks</a>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav mr-auto">
                <li class="nav-item"><a href="/" class="nav-link">Home</a>
                </li>
                <li class="active nav-item"><a href="/sharks" class="nav-link">Sharks</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="jumbotron text-center">
    <h1>Shark Info</h1>
</div>
<div class="container">
    <div class="row">
        <div class="col-lg-6">
            <p>
                <div class="caption">Some sharks are known to be dangerous to humans, though many more are not. The sawshark, for example, is not considered a threat to humans.
                </div>
                <img src="https://assets.digitalocean.com/articles/docker_node_image/sawshark.jpg" alt="Sawshark">
            </p>
        </div>
        <div class="col-lg-6">
            <p>
                <div class="caption">Other sharks are known to be friendly and welcoming!</div>
                <img src="https://assets.digitalocean.com/articles/docker_node_image/sammy.png" alt="Sammy the Shark">
            </p>
        </div>
    </div>
</div>

</html>
``````

Create a custom css folder style sheet - 
``````git
mkdir views/css
``````

create file in following location - nodejs-proj01/views/css:
```git
nano views/css/styles.css
```

Add the following code, which will set the desired color and font for your pages: nodejs-proj-01/views/css/styles.css
```git
.navbar {
	margin-bottom: 0;
}

body {
	background: #020A1B;
	color: #ffffff;
	font-family: 'Merriweather', sans-serif;
}

h1,
h2 {
	font-weight: bold;
}

p {
	font-size: 16px;
	color: #ffffff;
}

.jumbotron {
	background: #0048CD;
	color: white;
	text-align: center;
}

.jumbotron p {
	color: white;
	font-size: 26px;
}

.btn-primary {
	color: #fff;
	text-color: #000000;
	border-color: white;
	margin-bottom: 5px;
}

img,
video,
audio {
	margin-top: 20px;
	max-width: 80%;
}

div.caption: {
	float: left;
	clear: both;
}
```
Allow the port 8080 in internal firewall
``````git
sudo ufw allow 8080
``````

Start the the application and make sure you are in folder : nodejs-proj-01
```git
node app.js
```
![image](https://github.com/abhiramdas99/nodejs-proj-01/assets/62290469/125ce41e-17e2-4c19-85e9-b6e36fe9e2de)

#Add docker file

make sure, you are in nodejs-proj-01
```git
pwd 
```

create a docker file 
```git
nano Dockerfile
```

Add the following thing to the docker file - nodejs-proj-01/Dockerfile: 
```git
FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

#copy your application code with the appropriate permissions to the application directory on the container
COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]

```

Add a docker ignore file 
- Before building the application image, add a .dockerignore fie. its similar to the .gitignore file. 
- .dockerignore specifies which files and directories in your project directory should not be copied over to your container.
``````git
nano .dockerignore
``````

Inside the file add the following thing - 
``````git
node_modules
npm-debug.log
Dockerfile
.dockerignore
``````
Before the the docker image make sure, you have install the docker https://docs.docker.com/desktop/install/windows-install/
- For ubuntu machine 
``````git 
sudo apt update -y  
sudo apt install docker.io 
``````
- For windows machine  - follow the link - 

Build an image from the docker file 
- -t flag allow you to tag the image with memorable name
- put your docker hub username in the place of my name 
- .  means build the image from the content of in root directory of the application 

``````git 
docker build -t abhiramdas99/nodejs-frontend .
``````

