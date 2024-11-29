#!/bin/bash

mkdir -p /var/opt/gitlab/gitlab-runner
curl -L --output /var/opt/gitlab/gitlab-runner/gitlab-runner "https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64"
chown -R git:root /var/opt/gitlab/gitlab-runner
chmod +x /var/opt/gitlab/gitlab-runner/gitlab-runner
ln -s /var/opt/gitlab/gitlab-runner/gitlab-runner /usr/bin
useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash
gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
