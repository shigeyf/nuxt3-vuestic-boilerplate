# A minimal starter boilerplate project for Nuxt 3 application with Vuestic UI

Look at the [Nuxt 3 documentation](https://nuxt.com/docs/getting-started/introduction) to learn more.

## Features

- [x] ⚡ Integrate with Vuestic UI
- [x] ✨ Code Formtatting and Linting tools: Prettier, ESLint, StyleLint & lint-staged
- [x] ⭐ Commit Log Formatting & Linting tools: Commitizen, git-cz & commitlint
- [x] 🐕 Husky for Git hooks (commit-msg, pre-commit, prepare-commit-msg)

## Setup

Make sure to install the dependencies:

```bash
# yarn
yarn install

# npm
npm install

# pnpm
pnpm install
```

## Development Server

Start the development server on `http://localhost:3000`

```bash
npm run dev
```

## Production

Build the application for production:

```bash
npm run build
```

Locally preview production build:

```bash
npm run preview
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.

## Notes

### Integrate with Vuestic

The following NPM modules are added to this plain Nuxt3 app template.

- @vuestic/nuxt
- @vuestic/ag-grid-theme

`nuxt.config.ts` is updated to setup Vuestic UI.
