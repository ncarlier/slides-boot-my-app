module.exports =
  statics:
    files: [
      'index.html'
      'slides/*.md'
      'slides/*.html'
      'css/*.css'
      'js/*.js'
    ]
    options:
      livereload: not process.env.OPENSHIFT_APP_UUID?

  index:
    files: [
      'templates/_index.html'
      'templates/_section.html'
      'slides/list.json'
    ]
    tasks: ['buildIndex']

  less:
    files: ['less/*.less']
    tasks: ['less']

  coffeelint:
    files: [
      'Gruntfile.coffee'
      'grunt/*.coffee'
    ]
    tasks: ['coffeelint']

  jshint:
    files: ['js/*.js']
    tasks: ['jshint']
