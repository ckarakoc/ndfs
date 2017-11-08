#!/bin/bash

rm -f submit.tar.gz
rm -f submit.tar
find src -type f -name "*.java" | xargs tar rvf submit.tar && \
gzip submit.tar
