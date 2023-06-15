const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  configureWebpack: {
    devtool: 'source-map'
  },
  outputDir: "../public",
  devServer: {
    proxy: {
      "": {
        target: "http://localhost:4567",
        ws: false,
        changeOrigin: true,
      },
    },
  },
  pages: {
    index: {
      entry: "src/main.js",
      title: "ruby-vue-sinatra-rack-temp",
    },
  },
});
