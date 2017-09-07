<center><img src="https://www.docker.com/sites/default/files/vertical_large.png" alt="Docker logo" style="height: 100px; margin-right:20px;"/>
<img src="https://wappalyzer.com/images/icons/apostrophecms.svg" alt="Apostrophe logo" style="height: 100px;"/>

# Dockerized Apostrophe Boilerplate </center>

This project aims to make a ready to start Apostrophe boilerplate using Docker containers and docker-compose. [Apostrophe Boilerplate](https://github.com/punkave/apostrophe-boilerplate) is a minimal starting point for [Apostrophe 2](https://github.com/punkave/apostrophe) projects. [Docker](https://www.docker.com/) provides a way to run applications securely isolated in a container, packaged with all its dependencies and libraries. [MongoDB](https://www.mongodb.com/) is a great document database used by Apostrophe and many other software products.

## Setup

Once you have a local copy of this project, make sure you have Docker installed on your system.

From the root of the project dir exec the following:

```bash
$ docker-compose up
```

This will launch two docker containers, one with [mongoDB](https://www.mongodb.com/) and the other running Apostrophe with the boilerplate project.

Now you're all set! Start building your own Apostrophe site, changes made to the source files will be automatically reloaded with the help from [nodemon](https://nodemon.io/). Head to `localhost:3000` in your web browser to view your Apostrophe site.

## Database backup and restore

In the folder `db_backup` you will find a script to make a dump of the mongo database. The script will prompt you if you wish to backup or restore the database dump. 

```bash
$ ./db_backup/backup_script.sh
```

After a backup the database dump will be located in `db_backup/dump/`. Use this dump to restore your work on a different machine or for deployment.

## Documentation

+ More documentation on Apostrophe, go to the [A2 documentation site](http://apostrophecms.com).
+ Documentation on Docker, go to the [Docker Documentation](https://docs.docker.com/)
+ For an excellent introduction to Node.js in Containers Using Docker, visit [webapplog's blog post](https://webapplog.com/node-docker/)


---