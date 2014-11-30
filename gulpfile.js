var gulp    = require("gulp");
var webpack = require('webpack');
var gwebpack = require('gulp-webpack');

var config = {
  context: __dirname + "src",
  entry: "./index",
  output: {
    path: __dirname + "/dist",
    filename: "core-routing.js"
  },
  plugins: [
    new webpack.optimize.UglifyJsPlugin()
  ]
};

gulp.task("webpack", function() {
  return gulp.src('src/core-routing.js')
    .pipe(gwebpack(config))
    .pipe(gulp.dest('dist/'));
});