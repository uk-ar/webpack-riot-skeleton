window.riot = require 'riot/riot'
window.emoji = require 'emoji-images/emoji-images'

#require("file!../node_modules/emoji-images/pngs/ok.png")
require.context("../node_modules/emoji-images/pngs/",false,/.png$/)
require './todo.tag'
require './raw.tag'
