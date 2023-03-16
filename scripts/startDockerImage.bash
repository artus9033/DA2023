#!/usr/bin/env bash

SCRIPT=$(realpath "$0")
SCRIPT_DIR_PATH=$(dirname "$SCRIPT")

PROJECT_ROOT_ABS_PATH=$(realpath "$SCRIPT_DIR_PATH/../")
docker run -ti -d --name da2023 -v $PROJECT_ROOT_ABS_PATH:/root/DA2023 iszagh/cmdstan_python:1
