#!/bin/bash

. .env

ID=$1

#####################################################################################
# endpoint                                                                          #
# POST /repos/:owner/:repo/deployments/:deployment_id/statuses                      #
#-----------------------------------------------------------------------------------#
curl                                                                                \
  --silent                                                                          \
  --header "Authorization: token $TOKEN"                                            \
  --header "Content-Type: application/json"                                         \
  --header "Accept: application/json"                                               \
  --data '{"state": "success"}'                                                     \
  https://api.github.com/repos/$USER_OR_ORG/$REPO/deployments/$ID/statuses          \
#####################################################################################
