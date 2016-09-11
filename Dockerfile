FROM semtech/mu-cl-resources:1.13.0

COPY . /app/dependencies
ADD ./startup.lisp /usr/src/startup.lisp

CMD sh /load-config.sh; sbcl --load /usr/src/startup.lisp