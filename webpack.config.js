var webpack = require("webpack");
module.exports = {
  entry: './src/index.coffee',
  output: {
    path: './public',
    filename: 'bundle.js'
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
