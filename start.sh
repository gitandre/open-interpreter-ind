#!/usr/bin/bash

echo "Welcome to open-interpreter in a container"
echo "------------------------------------------"
echo "---"

echo "Checking OPENAI_API_KEY..."
if [ -z "$OPENAI_API_KEY" ]; then
  echo "OPENAI_API_KEY is not set."
  echo "Please pass in your OPENAI_API_KEY when running docker run"
  echo "Example:"
  echo "docker run -it -e \"MY_OPENAI_API_KEY=sk-akabcdefgh123456789\" gitandre/open-interpretter-no-key:latest"
  exit 1
else
  echo "OPENAI_API_KEY set OK"
  export OPENAI_API_KEY=$OPENAI_API_KEY
fi

echo "interpreter --help"
echo "---"
interpreter --help

echo "Starting open-interpreter..."
echo "------------------------------------------"
echo "github repo: https://github.com/KillianLucas/open-interpreter"
echo "---"

#start with gpt-3.5-turbo
interpreter --fast