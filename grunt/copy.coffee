module.exports =
  dist:
    files: [{
      expand: true
      src: [
        'slides/**'
        'bower_components/**'
        'js/**'
      ]
      dest: 'dist/'
    }, {
      expand: true
      src: ['index.html']
      dest: 'dist/'
      filter: 'isFile'
    }]
