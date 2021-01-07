FROM python:3.7

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade --no-cache-dir \
  flake8 \
  flake8-bugbear \
  flake8-comprehensions \
  flake8-import-order

COPY flake8 /flake8

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
