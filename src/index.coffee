window.riot = require 'riot/riot'
require './app.tag'
require './timer.tag'
window.addEventListener 'load', =>
  [timer] = riot.mount('timer', {})
  timer.update(items: [{name: 'updated1'}])
