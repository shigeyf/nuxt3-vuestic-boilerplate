// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  rootDir: 'src',
  modules: ['@vuestic/nuxt'],
  vuestic: {
    config: {
      // Vuestic config here
    },
    css: ['grid', 'typography'],
  },
})
