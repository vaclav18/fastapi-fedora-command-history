FROM fedora:32
RUN dnf -y install python3 & dnf clean all && pip install fastapi uvicorn aiofiles
WORKDIR /srv
CMD ["uvicorn", "main:app", "--reload"]
