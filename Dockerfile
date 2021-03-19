FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/

# hadolint ignore=DL3013
RUN pip install --upgrade pip==20.0.2 &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]