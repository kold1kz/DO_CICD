#!/bin/bash

TOKEN=5029290279:AAGjn54yO1PgY9aWsGAPuk_U7hC0WCGkSL4
ID=958816179
TIME="10"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
TEXT="Status CI/CD: *$1* %0AStage:+$CI_JOB_STAGE%0AProject:+$CI_PROJECT_NAME%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s --max-time $TIME -d "chat_id=$ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
