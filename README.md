# atlassian-cli-docker
Dockerfile for Bob Swift's Atlassian CLI https://bobswift.atlassian.net/wiki/spaces/ACLI/overview

## Usage

```
docker build . -t atlassian_cli
docker run -v ~/tmp/:/export atlassian_cli jira.sh
```
