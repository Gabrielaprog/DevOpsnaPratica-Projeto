const { defineConfig } = require('cypress');

module.exports = defineConfig({
  e2e: {
    baseUrl: 'http://192.168.0.62:8080', // endereço do servidor local
    setupNodeEvents(on, config) {
      // eventos do Node, se precisar
    },
  },
});
