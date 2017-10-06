FROM python:3.6-alpine

RUN pip install \
  "kubernetes==3.0.0" \
  "jinja2~=2.9.5" \
  "pyyaml~=3.12" \
  "click~=6.7" \
  "ipdb"

WORKDIR /usr/src/app
COPY . /usr/src/app
COPY config /root/.kube/config
CMD ["python", "./operator.py"]
