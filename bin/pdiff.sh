#!/usr/bin/env bash
COMMIT1SHA=$1
COMMIT2SHA=$2

diff <(git show $COMMIT1SHA) <(git show $COMMIT2SHA)
