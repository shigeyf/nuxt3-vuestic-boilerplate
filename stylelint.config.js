//
// stylelint.config.js
//

// Setup:
// [run]
// npm install --save-dev stylelint stylelint-config-standard-scss
// npm pkg set scripts.stylelint:check="stylelint **/*.{scss,css}"
// npm pkg set scripts.stylelint:fix="stylelint --fix **/*.{scss,css}"
// [/run]

/** @type {import("stylelint").Config} */
const config = {
  extends: 'stylelint-config-standard-scss',
  rules: {},
}
module.exports = config
