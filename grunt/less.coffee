module.exports =
  dist:
    options:
      paths: ['client/stylesheets']
      cleancss: true
    files:
      'css/style.css': 'less/style.less'
