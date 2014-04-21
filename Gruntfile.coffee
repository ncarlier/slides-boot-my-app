# Build configuration.
module.exports = (grunt) ->
    # Load all grunt tasks.
    require('load-grunt-tasks')(grunt)

    # Load grunt configurations
    conf = require('./grunt')(grunt)
    grunt.initConfig conf

    # Custom task: Build index.html from templates.
    grunt.registerTask 'buildIndex', 'Build index.html from templates/_index.html and slides/list.json.', ->
      indexTemplate = grunt.file.read 'templates/_index.html'
      sectionTemplate = grunt.file.read 'templates/_section.html'
      slides = grunt.file.readJSON 'slides/list.json'

      html = grunt.template.process indexTemplate, data:
        slides: slides
        section: (slide) ->
          grunt.template.process sectionTemplate, data:
            slide: slide

      grunt.file.write 'index.html', html

    # Register other tasks...
    grunt.registerTask 'test', '*Lint* javascript and coffee files.', [
      'coffeelint'
      'jshint'
    ]

    grunt.registerTask 'server', 'Run presentation locally and start watch process (living document).', [
      'buildIndex'
      'less'
      'connect:livereload'
      'watch'
    ]

    grunt.registerTask 'dist', 'Save presentation files to *dist* directory.', [
      'test'
      'buildIndex'
      'less'
      'copy'
    ]

    # Define default task.
    grunt.registerTask 'default', [
      'test'
      'server'
    ]
