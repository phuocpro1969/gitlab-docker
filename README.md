# gitlab-docker

## create environment(must)
```
export GITLAB_HOME=$(pwd)/gitlab
```

## start gitlab
```
docker-compose up -d
```
### wait minimun 5 min to gitlab started

## login
### username: root
### password:
```
docker exec -it gitlab-ce grep 'Password:' /etc/gitlab/initial_root_password
```

## register runner
for http
```
docker exec -it gitlab-runner gitlab-runner register --url "http://gitlab-ce" --clone-url "http://gitlab-ce"
```

for https
```
 docker exec -it gitlab-runner gitlab-runner register --url "https://learning-devops.tk" --clone-url "https://learning-devops.tk"
```

## stop gitlab
```
docker-compose down
```
