#!/bin/sh

xvfb-run calibredb add "${BOOK_IMPORT_PATH}" -1 -r --library-path "${LIBRARY_PATH}"
