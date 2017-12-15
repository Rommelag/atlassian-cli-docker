#Can't use 8-jre-alpine because the .sh scripts require bash
FROM openjdk:8-jre-slim
ADD https://bobswift.atlassian.net/wiki/download/attachments/16285777/atlassian-cli-7.3.0-distribution.zip?version=1&modificationDate=1511925109031&cacheVersion=1&api=v2 /opt/atlassian_cli.zip
RUN unzip /opt/atlassian_cli.zip -d /opt/
RUN rm /opt/atlassian_cli.zip
RUN mv /opt/atlassian-cli*/ /opt/atlassian-cli/
RUN mkdir /export/
ENV PATH="/opt/atlassian-cli:${PATH}"
WORKDIR /opt/atlassian-cli
