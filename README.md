# Docker Python FastAPI Fedora32 

A web service using FastAPI, pydantic and aiofiles.

It will parse dnf history to a JSON


## Usage

1. Generate history.txt file
 ```bash
dnf history | tail --lines=+3 > history.txt
```

2. Build the container image and run it
 ```bash
podman build -t fastapi .
podman run --rm -v $PWD:/srv:z -p 8000:8000 --name fastapi -d fastapi
```

Alternativelly just run:
 ```bash
uvicorn main:app --reload
```

3. GET request
 ```bash
$ curl http://127.0.0.1:8000 
```
Outputs a JSON array
