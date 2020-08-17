docker stop $(docker ps -a -q)
docker rm &(docker ps -a -q)
docker run -d -p 5901:5901 -p 6901:6901 -p 3000:3000 -p 8080:8080 student-environment2
