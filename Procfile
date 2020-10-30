release: sudo mount -o remount,rw . && chmod u+x compile && ./compile . /var/env /tmp/build-cache
web: gunicorn aide_doc.wsgi
