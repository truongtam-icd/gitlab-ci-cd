# GitLab CI/CD


## List version
[Docker Hub ](https://hub.docker.com/r/gitlab/gitlab-ce/tags)


## How to run?
```
docker compose up -d
```


## Browser
![](image/1.png)


```
http://gitlab.icd-vn.com/
Username: root
~/GITLAB_HOME/config/initial_root_password has password when install gitlab
```

![](image/2.png)

## How to run GitLab Runner?
### Create new runner

![](image/3.png)


### Get token
![](image/4.png)

```
Tags: shell
Token: glrt-t1_FNzAxifCS6Q1K4MpH1pR
```


## Use shell login to docker install GitLab Runner

### Setup GitLab Runner
```
./home/setup/install-gitlab-runner.sh
```

```
gitlab-runner register
```

```
  Input with params:
      url: http://gitlab.icd-vn.com
      token: glrt-t1_FNzAxifCS6Q1K4MpH1pR
      name: shell-nodejs
      executor: shell
```

### Run
```
gitlab-runner run
```

![](image/5.png)