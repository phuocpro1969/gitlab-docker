# gitlab-docker

## start gitlab
```
docker-compose up -d
```
### wait minimun 5 min to gitlab started

## User login admin initial
### username: root
### password:
```
docker exec -it gitlab-ce grep 'Password:' /etc/gitlab/initial_root_password
```

## register runner
### for http
```
docker exec -it gitlab-runner gitlab-runner register --url "http://gitlab-ce" --clone-url "http://gitlab-ce" 
```

### for https
```
docker exec -it gitlab-runner gitlab-runner register --url "https://learning-devops.tk" --clone-url "https://learning-devops.tk" \
  --executor docker \
  --description "Docker Runner" \
  --docker-image "docker:20.10.13" \
  --docker-volumes /var/run/docker.sock:/var/run/docker.sock
```

### default docker image
```
alpine:latest
```

## stop gitlab
```
docker-compose down
```
