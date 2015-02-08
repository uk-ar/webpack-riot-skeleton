var webpack = require("webpack");
module.exports = {
  entry: './src/index.coffee',
  output: {
    filename: 'public/bundle.js'
  },

  module: {
    loaders: [
      { test: /\.coffee$/, loader: "coffee" },
      { test: /\.tag$/, loader: 'tag'}
    ]
  },

  resolve: {
    extensions: ["", ".coffee", ".js"]
  }
}
