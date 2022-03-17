#!/bin/bash

. .env

#######################################################################
# endpoint                                                            #
# POST /repos/:owner/:repo/deployments                                #
#---------------------------------------------------------------------#
curl                                                                  \
  --silent                                                            \
  --header "Authorization: token $TOKEN"                              \
  --header "Content-Type: application/json"                           \
  --header "Accept: application/json"                                 \
  --data '{"ref": "master"}'                                          \
  https://api.github.com/repos/$USER_OR_ORG/$REPO/deployments         \
  # | jq '.id'                                                          \
#######################################################################
