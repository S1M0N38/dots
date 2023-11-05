#!/usr/bin/env bash

YAML=$(papis list --info "${1//:/}")

SUMMARY="\033[33m$(yq '.year' $YAML)\033[0m "
SUMMARY+="\033[34m$(yq '.title' $YAML)\033[0m\n\n"
SUMMARY+="\033[32m$(yq '.author' $YAML)\033[0m\n\n"
SUMMARY+="$(yq '.abstract' $YAML)"

echo -e "$SUMMARY"
