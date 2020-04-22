FROM python:3.5.9-alpine

COPY . /source/

WORKDIR /source/

RUN set -ex; \
        python --version; \
        python -m pip --version; \
        python -m pip install --upgrade setuptools wheel; \
        python setup.py sdist bdist_wheel
