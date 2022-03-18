# gitlab-docker

## start gitlab
```
docker-compose up -d
```

## login
### username: root
### password:
```
docker exec -it gitlab-ce grep 'Password:' /etc/gitlab/initial_root_password
```

## register gitlab
```
docker exec -it gitlab-runner gitlab-runner register --url "http://gitlab-ce" --clone-url "http://gitlab-ce"
```

## stop gitlab
```
docker-compose down
```
