exports.files =
  javascripts:
    joinTo:
      'vendor.js': /^(?!app)/
      'app.js': /^app/
  stylesheets: joinTo: 'app.css'

exports.plugins =
  babel: presets: ['latest']
  static:
    processors: [
      require('html-brunch-static') {
        processors: [
          require('pug-brunch-static')()
        ]
      }
    ]
