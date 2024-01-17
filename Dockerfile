FROM python:3.12-alpine

COPY files/ /

ENV PIP_ROOT_USER_ACTION=ignore

RUN pip install -U pip \
 && pip install lxml click requests pyyaml

#ENV TZ=Europe/Budapest
#RUN apk add --no-cache tzdata \
# && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Rather run with '-v /etc/localtime:/etc/localtime:ro'

STOPSIGNAL SIGKILL

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "cron" ]
