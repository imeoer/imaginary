#!/bin/bash

docker build -t imeoer/imaginary .

docker run --name imaginary --rm -p 9000:9000 -v thumbnails:/mnt/data imeoer/imaginary -cors -enable-url-source -http-cache-ttl 31556926 -mount /mnt/data

# http://localhost:9000/thumbnail?width=918&url=https://static.press.one/6e/71/6e7182bb0adca7727c9591fb752943b8e7f57895bc71c752eec717baf8d36064.jpg
# http://localhost:9000/thumbnail?width=919&url=https://static.press.one/6e/71/6e7182bb0adca7727c9591fb752943b8e7f57895bc71c752eec717baf8d36064.jpg
