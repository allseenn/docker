# Containerization

This rep contains lections, seminars and tasks from GeekBrains university course "Containerization", that includes basics of:
- chroot
- cgroups
- lxc 
- docker

## Cleaning (not deleting) unease docker containers and their garbage

1. To chek disk space that docker occupies

```
docker system df
```

Its output present the table

```
TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          2         0         1.135GB   1.135GB (100%)
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     12        0         38.01MB   38.01MB
```
The talbe contains info about objects that could be deleted

2. Deleting unease images

Listing of all images

```
docker images
```

Give us info about images, their sepace and ID

```
REPOSITORY                        TAG       IMAGE ID       CREATED       SIZE
ubuntu                            12.10     3e314f95dcac   9 years ago   172MB
```

Delete unnecessary image

```
docker rmi 3e314f95dcac
```

3. Deleteng unease containders

Listing of all containders (running and stoped)

```
docker ps -a
```
Output give us info about coneiners props

```
CONTAINER ID   IMAGE     COMMAND   CREATED          STATUS                      PORTS     NAMES
896c17abc24f   ubuntu    "bash"    23 seconds ago   Exited (0) 16 seconds ago             awesome_williamson
```

To delete stoped container run

```
docker rm 896c17abc24f
```

4. Deleting unease local volumes

To list all docker volumes

```
docker volume ls
```

We could delete only one container

```
docker volume rm 896c17abc24f
```

Of we could drop all of them

```
docker volume prune

```

5. Delete build cache

In most cases just run

```
docker builder prune
```

It will delete all cache
