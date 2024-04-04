FROM python:alpine

ARG TAG=latest
RUN pip install --no-cache-dir requests$([[ ${TAG} != "latest" ]] && echo "==${TAG}" || echo "")
