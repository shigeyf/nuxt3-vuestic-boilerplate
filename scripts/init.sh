#!/bin/sh

TEMP=./tmp

npm create vuestic@latest
mv ${TEMP}/.gitignore ${TEMP}/.npmrc ${TEMP}/* .
rm -rf ${TEMP}
mkdir src
mv app.vue public server src/
cat tsconfig.json | sed 's;./.nuxt/tsconfig.json;./src/.nuxt/tsconfig.json;' > tsconfig.json.new
mv tsconfig.json.new tsconfig.json
cat nuxt.config.ts | sed "s/^$/  rootDir: 'src',/" > nuxt.config.ts.new
mv nuxt.config.ts.new nuxt.config.ts

folders="assets components composables content middleware modules plugins public server/api server/routes server/middleware utils"
for i in ${folders}
do
	mkdir -p src/$i
	touch src/$i/.gitkeep
done

npm install

mkdir ${TEMP}
curl -sLo ${TEMP}/setup_husky.sh https://gist.github.com/shigeyf/8d7cb5f507817fe7099bdd1183ca9776/raw/setup_husky.sh
chmod +x ${TEMP}/setup_husky.sh
${TEMP}/setup_husky.sh
rm -rf ${TEMP}

# EditorConfig
curl -sLO https://gist.github.com/shigeyf/edb0b5b0bb42b8d1ceade76d9c1d0394/raw/.editorconfig
# Prettier
curl -sLO https://gist.github.com/shigeyf/116dfd1dc75377e31abb052b2b711b98/raw/prettier.config.js
# ESLint
curl -sL -o .eslintrc.js https://gist.github.com/shigeyf/5492c8058b35f15f0dfd3ed75349c7ae/raw/.eslintrc.nuxt3.js
# StyleLint
curl -sLO https://gist.github.com/shigeyf/7a2187c4d820d4564bd0bd60a1d22375/raw/stylelint.config.js
# CommitLint
curl -sLO https://gist.github.com/shigeyf/26dbadcbd275fb5e61852078d1493a98/raw/commitlint.config.js
# git-cz (ChangeLog)
curl -sLO https://gist.github.com/shigeyf/d26f49640f8730bcc8874ad408045555/raw/changelog.config.js
# Lint-Staged
curl -sLO https://gist.github.com/shigeyf/13963ab2120820f163504d6e49149025/raw/lint-staged.config.js

cp .gitignore .eslintignore
cp .gitignore .prettierignore

FILES="prettier.config.js .eslintrc.js stylelint.config.js lint-staged.config.js"
for i in ${FILES}
do
  cat $i | awk '/^\/\/ \[run\]/{flag=1;next} /\/\/ \[\/run\]/{flag=0} {if(flag){print $0}}' | sed 's;^// ;;' | while read CMD
  do
    echo "Run command: $CMD"
    eval "$CMD"
  done
done

exit 0
