FROM jboss/wildfly
COPY SimpleJavaWebApp-1.0-SNAPSHOT.war /opt/jboss/wildfly/standalone/deployments/
COPY standalone.conf /opt/jboss/wildfly/bin/
EXPOSE 8787/tcp
EXPOSE 8787/udp
RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]