gulp = require 'gulp'
browserify = require 'browserify'
source = require 'vinyl-source-stream'
reactify = require 'reactify'

gulp.task 'browserify', ->
  b = browserify(
    entries: ['./src/main.js'],
    transform: [reactify]
  )

  return b.bundle()
    .pipe source 'app.js'
    .pipe gulp.dest './dist' 
