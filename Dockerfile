FROM python:3.8-alpine

ENV PATH="/scripts:${PATH}"
ENV PYTHONENBUFFERED 1

COPY ./djangogram/requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client jpeg-dev
RUN apk add --update --no-cache --virtual .tmp \
    libffi-dev gcc libc-dev linux-headers postgresql-dev musl-dev zlib zlib-dev
RUN pip install -r /requirements.txt
RUN apk del .tmp

RUN mkdir /djangogram
COPY ./djangogram /djangogram
WORKDIR /djangogram
COPY ./scripts /scripts
RUN chmod +x /scripts/*

RUN mkdir -p /vol/web/media
RUN mkdir -p /vol/wev/static
RUN adduser -D user
RUN chown -R user:user /vol/
RUN chmod -R 755 /vol/web/
USER user

CMD ["entrypoint.sh"]
