FROM tiangolo/meinheld-gunicorn-flask:python3.6
COPY app/requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY ./app /app
WORKDIR /app

COPY . /app
ENV WORKERS_PER_CORE=2
RUN sed -i '/errorlog = "-"/a timeout = 300' /gunicorn_conf.py
RUN sed -i '/timeout = 300/a accesslog = "-"' /gunicorn_conf.py
RUN sed -i '/accesslog = "-"/a worker_class = "gevent"' /gunicorn_conf.py
RUN sed -i '/worker-class = gevent = "-"/a worker_connections = 1000' /gunicorn_conf.py
RUN sed -i 's/keepalive = 120/keepalive = 2/g' /gunicorn_conf.py
RUN cat /gunicorn_conf.py

EXPOSE 80