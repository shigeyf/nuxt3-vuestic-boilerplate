#!/bin/sh

npx husky uninstall
rm -rf src
rm -f .gitignore .npmrc nuxt.config.ts package.json README.md tsconfig.json
rm -rf node_modules
rm -f package-lock.json
rm -f .editorconfig
rm -f .eslintrc.js
rm -f *.config.js
rm -rf .husky
rm -f .eslintignore .prettierignore

exit 0
