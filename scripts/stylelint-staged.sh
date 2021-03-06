#!/bin/sh

executable=node_modules/.bin/staged-files
linter_name="stylelint"
linter_path=./node_modules/.bin/stylelint
lint_extensions="**/*.@(css|scss|less|styl)"

if [[ -e "${linter_path}" ]]; then
  echo "Running ${linter_name} on git staged files: ${lint_extensions}"
  ${executable} "${lint_extensions}" -- ${linter_path}
else
  echo "Could not find ${linter_name} at ${linter_path}. Is it installed?"
  echo ""
  echo "Try running:"
  echo "npm install --save-dev ${linter_name}"
fi
