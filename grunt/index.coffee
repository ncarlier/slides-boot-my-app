module.exports = (grunt) ->
  clean:      ['dist']
  watch:      require('./watch')
  connect:    require('./connect')
  coffeelint: require('./coffeelint')
  jshint:     require('./jshint')
  less:       require('./less')
  copy:       require('./copy')
