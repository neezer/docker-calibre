FROM python

VOLUME /library
VOLUME /books-to-add

ENV LIBRARY_PATH /library
ENV BOOK_IMPORT_PATH /books-to-add

RUN apt-get update && \
  apt-get install -y wget xvfb imagemagick && \
  wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh

COPY add-books.sh /usr/local/bin/import-books

EXPOSE 8080

CMD calibre-server $LIBRARY_PATH
