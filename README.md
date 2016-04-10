# prior

Just a small code to tryout for the first time to launch an app running on
[Google App Engine Flexible environment][0] using [custom runtimes][1].

It is written in [Ruby Alpine image][2] to provide a simple web app
providing just the following endpoints

    /
    /_ah/start
    /_ah/stop
    /_ah/health

To build the container for development

    docker build -t prior:ongoing .

Running the development container

    docker run -p '8080:8080' -ti prior:ongoing

Entering the container to run

    docker run -p '8080:8080' -ti prior:ongoing sh

Deploying to Google AppEngine

    gcloud preview app deploy app.yaml



[0]: https://cloud.google.com/appengine/docs
[1]: https://cloud.google.com/appengine/docs/flexible/custom-runtimes/
[2]: https://hub.docker.com/_/ruby/
