# docker-podman-simplejavawebapp

Testing deploy and running a Java WebApp uder Docker and Podman.

This project is also meant to be enabled for remote debugging in Intellij IDEA.

## Based on
This tutorial
https://www.jetbrains.com/help/idea/deploying-a-web-app-into-wildfly-container.html

## jboss/wildfly
```
FROM jboss/wildfly
COPY SimpleJavaWebApp-1.0-SNAPSHOT.war /opt/jboss/wildfly/standalone/deployments/
COPY hello.war /opt/jboss/wildfly/standalone/deployments/
COPY standalone.conf /opt/jboss/wildfly/bin/
EXPOSE 8787/tcp
EXPOSE 8787/udp
```

### Browser
http://localhost:9990/console/index.html
http://localhost:8080/SimpleJavaWebApp-1.0-SNAPSHOT/

## Playing with Podman

### Reset machine
```
podman machine stop
podman machine stop rm
podman machine stop init
podman machine start
```

### Pull and build
```
podman pull docker.io/jboss/wildfly
podman build -t simplewebapp docker-dir/
```

### Run
```
podman run -p 0.0.0.0:8080:8080 -p 0.0.0.0:8787:8787 -p 0.0.0.0:9990:9990 --name simplewebapp --rm localhost/simplewebapp
```



