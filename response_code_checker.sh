#!/bin/bash
xargs -n1 -P 10 curl -o /dev/null --silent --head --write-out '%{url_effective};%{http_code};%{time_total};%{time_namelookup};%{time_connect};%{size_download};%{speed_download}\n' < $1 | tee results.csv

#thanks to estani from https://stackoverflow.com/questions/6136022/script-to-get-the-http-status-code-of-a-list-of-urls
