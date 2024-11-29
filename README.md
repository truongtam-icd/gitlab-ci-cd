# gitlab-ci-cd


# List version
https://hub.docker.com/r/gitlab/gitlab-ce/tags


# How to run?
docker compose up -d


# Browser
http://gitlab.icd-vn.com/
User: root
~/GITLAB_HOME/config/initial_root_password has password when install gitlab


# How to run GitLab Runner?
Use shell login to docker install GitLab Runner

cd /var/opt/setup
./install-gitlab-runner.sh


export TOKEN="glrt-t1_T-mYEjorwJsYFoiJGKnJ"
gitlab-runner start
gitlab-runner register

    url: http://gitlab.icd-vn.com
    token: TOKEN
    executor: docker
    image: node:18-alpine3.20

gitlab-runner run
