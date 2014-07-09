module.exports =
  livereload:
    options:
      port: process.env.OPENSHIFT_NODEJS_PORT || 9000
      # Change hostname to '0.0.0.0' to access
      # the server from outside.
      hostname: process.env.OPENSHIFT_NODEJS_IP || '0.0.0.0'
      base: '.'
      open: true
      livereload: process.env.NODE_ENV isnt 'production'
