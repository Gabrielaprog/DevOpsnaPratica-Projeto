const { defineConfig } = require('cypress');

module.exports = defineConfig({
  e2e: {
    baseUrl: 'http://127.0.0.1:8080', 
    // endereço do servidor local
    setupNodeEvents(on, config) {
      // eventos do Node, se precisar
    },
  },
});
