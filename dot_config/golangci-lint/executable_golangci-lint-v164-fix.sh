#!/usr/bin/env bash

# Enable command echoing
set -x

GOLANGCI_LINT=~/src/github.com/golangci/golangci-lint/golangci-lint

AUTOFIX_LINTERS=(
  "canonicalheader"
  "dupword"
  "errorlint"
  "fatcontext"
  "gci"
  "ginkgolinter"
  "gocritic"
  "godot"
  "err113"
  "gofmt"
  "gofumpt"
  "goheader"
  "goimports"
  "gosimple"
  "govet"
  "iface"
  "importas"
  "intrange"
  "mirror"
  "misspell"
  "nakedret"
  "nlreturn"
  "perfsprint"
  "protogetter"
  "revive"
  "staticcheck"
  "stylecheck"
  "tagalign"
  "testifylint"
  "whitespace"
  "wsl"
  "nolintlint"
)

for linter in "${AUTOFIX_LINTERS[@]}"; do
  echo "--- Fixing $linter issues ---"
  $GOLANGCI_LINT run --enable-only="$linter" --config=~/.config/golangci-lint/.golangci-v164.yml --fix
done
