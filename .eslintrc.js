//
// .eslintrc.js
//

// Setup:
// [run]
// npm install --save-dev eslint
// npm install --save-dev eslint-config-prettier eslint-plugin-prettier
// npm install --save-dev @typescript-eslint/eslint-plugin @typescript-eslint/parser
// npm install --save-dev @nuxtjs/eslint-config-typescript eslint-plugin-nuxt eslint-plugin-vue
// npm pkg set scripts.lint:check="eslint --ext .ts,.tsx,.js,.jsx,.vue ."
// npm pkg set scripts.lint:fix="eslint --ext .ts,.tsx,.js,.jsx,.vue --fix ."
// [/run]

const config = {
  root: true,
  env: {
    browser: true,
    es2021: true,
    node: true,
  },
  extends: [
    '@nuxtjs/eslint-config-typescript',
    'plugin:@typescript-eslint/recommended',
    'plugin:nuxt/recommended',
    'plugin:vue/vue3-recommended',
    'eslint:recommended',
    'standard',
    'plugin:prettier/recommended',
  ],
  globals: {
    defineNuxtConfig: false,
    defineNuxtPlugin: false,
    useNuxtApp: false,
  },
  overrides: [],
  parser: 'vue-eslint-parser',
  parserOptions: {
    parser: '@typescript-eslint/parser',
    ecmaVersion: 'latest',
    sourceType: 'module',
  },
  plugins: ['vue', '@typescript-eslint'],
  rules: {
    'comma-dangle': ['error', 'always-multiline'],
    '@typescript-eslint/no-non-null-assertion': 0,
    '@typescript-eslint/no-explicit-any': 0,
    'vue/require-default-prop': 0,
    'vue/multi-word-component-names': 0,
    'import/no-named-as-default-member': 0,
    'import/no-named-as-default': 0,
  },
}
module.exports = config
