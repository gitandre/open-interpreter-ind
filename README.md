### open-interpreter-ind

#### build the Dockerfile
```commandline
docker build . open-interpretter-ind:latest --no-cache
```

#### Run in docker
```commandline
docker run -i -t -e "OPENAI_API_KEY=123456789abcdefg" open-interpretter-ind:latest
```