FROM staillansag/webmethods-microservicesruntime:10.15.7-msdemo

EXPOSE 5555
EXPOSE 5543
EXPOSE 9999

USER sagadmin

ADD --chown=sagadmin . /opt/softwareag/IntegrationServer/packages/msd-orders

RUN chgrp -R 0 /opt/softwareag/IntegrationServer/packages/msd-orders && chmod -R g=u /opt/softwareag/IntegrationServer/packages/msd-orders
