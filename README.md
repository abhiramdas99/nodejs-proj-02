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

