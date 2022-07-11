#!/usr/bin/env bash

pygo() {
  directory=$1

  project_name=$2

  shift 2

  if [ "$directory" != "." ]; then
    mkdir "$directory"

    cd "$directory" || echo "\033[01;31mERROR: Can't change directories."
  fi

  python -m venv --upgrade-deps venv

  # shellcheck disable=SC1091
  source venv/bin/activate

  pip install djangorestframework

  for dependency in "${@}"; do
    pip install "${dependency}"
  done

  pip freeze >requirements.txt

  django-admin startproject "$project_name" .

  cp ~/.libs/sh/.gitignore .

  git init

  git add -A

  git commit -m ":wrench: chore: setup"

  echo -e "\n✨ All done!\n"
}
