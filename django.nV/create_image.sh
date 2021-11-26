#!/bin/bash
NONE='\033[00m'
GREEN='\033[01;32m'
RED='\033[01;31m'
BLUE='\033[0;34m'
EXIT_CODE=0

image_creation () {
  docker build -q -f $1 -t k2cyber/test_application:$2 .
  exit_code=$?
  [[ $exit_code = 0 ]] && printf "${GREEN}Exit Code: $exit_code${NONE}\n" || printf "${RED}Exit Code: $exit_code${NONE}\n"
  if [[ $exit_code -eq 0 ]]
  then
    printf "${GREEN}Image created successfully${NONE}\n"
    printf "${GREEN}Pushing image: k2cyber/test_application:$2${NONE}\n"
    docker push k2cyber/test_application:$2
  else
    printf "${RED}Image creation failed for k2cyber/test_application:$2 !!!${NONE}\n"
    EXIT_CODE=1
  fi
}

printf "${BLUE}Building docker image with name k2cyber/test_application:django.nV${NONE}\n"
image_creation "Dockerfile" "django.nV"
exit $EXIT_CODE