#!/usr/bin/env bash

SUCCESS="\n$GREEN✅ All done.$NO_COLOR"

COPY_ERROR="\n$RED❌ Found an error while copying content from configs to user home.$NO_COLOR"

CREATE_TMP_ERROR="\n$RED❌ Found an error while creating the tmp dir.$NO_COLOR"

PERMISSIONS_ERROR="\n$RED❌ Found an error while changing permissions for the auxiliary scripts.$NO_COLOR"

COUNTING_ERROR="\n$RED❌ Found an error while counting the auxiliary scripts.$NO_COLOR"

EXECUTION_ERROR="\n$RED❌ Found an error while executing the auxiliary scripts.$NO_COLOR"

DELETE_TMP_ERROR="\n$RED❌ Found an error while deleting the tmp dir.$NO_COLOR"

UNKOWN_ERROR="\n$RED❌ Found an unknown error while executing.$NO_COLOR"

export SUCCESS COPY_ERROR CREATE_TMP_ERROR PERMISSIONS_ERROR COUNTING_ERROR EXECUTION_ERROR DELETE_TMP_ERROR UNKOWN_ERROR
