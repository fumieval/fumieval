#!/bin/sh -ue

REPOS="$(cat haskell-packages.txt)"

echo "| Name | Stars | Issues | Merge Requests | Status | Hackage |"
echo "| ---- | ----- | ------ | -------------- | ------ | ------- |"
for REPO in $REPOS; do
    echo "|$REPO"\
        "|![Stars](https://img.shields.io/github/stars/fumieval/$REPO?style=social)"\
        "| [![Issues](https://img.shields.io/github/issues/fumieval/$REPO?label=%22%22)](https://github.com/fumieval/$REPO/issues)"\
        "| [![PRs](https://img.shields.io/github/issues-pr/fumieval/$REPO?label=%22%22)](https://github.com/fumieval/$REPO/pulls)"\
        "| ![CI](https://github.com/fumieval/$REPO/workflows/Haskell%20CI/badge.svg)"\
        "| [![Hackage](https://img.shields.io/hackage/v/$REPO.svg?label=%22%22)](https://hackage.haskell.org/package/$REPO)"
done
