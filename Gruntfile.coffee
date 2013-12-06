'use strict'
"use strict"
lrSnippet = require("grunt-contrib-livereload/lib/utils").livereloadSnippet
mountFolder = (connect, dir) ->
  connect.static require("path").resolve(dir)

module.exports = (grunt) ->

  # load all grunt tasks
  require("matchdep").filterDev("grunt-*").forEach grunt.loadNpmTasks
#  require("load-grunt-tasks") grunt

  # configurable paths
  yeomanConfig =
    app: "app"
    dist: "dist"

  try
    yeomanConfig.app = require("./component.json").appPath or yeomanConfig.app
  grunt.initConfig
    pkg:grunt.file.readJSON('package.json')
    yeoman: yeomanConfig
    readme_generator : my_generator: #Thank you @JFusco
      options:

        # Task-specific options go here.
        # detailed explanation is under options
        # Default options:
        readme_folder: "readme"
        output: "README.md"
        table_of_contents: true
        toc_extra_links: []
        generate_changelog: false
        changelog_folder: "changelogs"
        changelog_version_prefix: null
        changelog_insert_before: null
        banner: null
        has_travis: true
        github_username: "aponxi"
        travis_branch: "master"
        generate_footer: true
        generate_title: true
        package_title: null
        package_name: null
        package_desc: null
        informative: true
        h1: "#"
        h2: "##"
        back_to_top_custom: null

      order:

        # Title of the piece and the File name goes here
#        "Filename" : "Title"
#        "installation.md": "Installation"
        "overview.md": "overview"
#        "usage.md": "Usage"
#        "options.md": "Options"
#        "example.md": "Example"
#        "output.md": "Example Output"
#        "building-and-testing.md": "Building and Testing"
#        "legal.md": "Legal Mambo Jambo"

    watch:
      coffee:
        files: ["<%= yeoman.app %>/scripts/{,*/}*.coffee"]
        tasks: ["coffee:dist"]

      coffeeTest:
        files: ["test/spec/{,*/}*.coffee"]
        tasks: ["coffee:test"]

      compass:
        files: ["<%= yeoman.app %>/styles/{,*/}*.{scss,sass}"]
        tasks: ["compass"]

      livereload:
        files: [
          "<%= yeoman.app %>/{,*/}*.html"
          "{.tmp,<%= yeoman.app %>}/styles/{,*/}*.css"
          "{.tmp,<%= yeoman.app %>}/scripts/{,*/}*.js"
          "<%= yeoman.app %>/images/{,*/}*.{png,jpg,jpeg,gif,webp,svg}"
        ]
        tasks: ["livereload"]

    connect:
      options:
        port: 9000

        # Change this to '0.0.0.0' to access the server from outside.
        hostname: "localhost"

      livereload:
        options:
          middleware: (connect) ->
            [
              lrSnippet
              mountFolder(connect, ".tmp")
              mountFolder(connect, yeomanConfig.app)
            ]

      test:
        options:
          middleware: (connect) ->
            [
              mountFolder(connect, ".tmp")
              mountFolder(connect, "test")
            ]

    open:
      server:
        url: "http://localhost:<%= connect.options.port %>"

    clean:
      dist:
        files: [
          dot: true
          src: [
            ".tmp"
            "<%= yeoman.dist %>/*"
            "!<%= yeoman.dist %>/.git*"
          ]
        ]

      server: ".tmp"

    jshint:
      options:
        jshintrc: ".jshintrc"

      all: [
        "Gruntfile.js"
        "<%= yeoman.app %>/scripts/{,*/}*.js"
      ]

    karma:
      unit:
        configFile: "karma.conf.js"
        singleRun: true

    coffee:
      dist:
        files: [
          expand: true
          cwd: "<%= yeoman.app %>/scripts"
          src: "{,*/}*.coffee"
          dest: ".tmp/scripts"
          ext: ".js"
        ]

      test:
        files: [
          expand: true
          cwd: "test/spec"
          src: "{,*/}*.coffee"
          dest: ".tmp/spec"
          ext: ".js"
        ]

    compass:
      options:
        sassDir: "<%= yeoman.app %>/styles"
        cssDir: ".tmp/styles"
        imagesDir: "<%= yeoman.app %>/images"
        javascriptsDir: "<%= yeoman.app %>/scripts"
        fontsDir: "<%= yeoman.app %>/styles/fonts"
        importPath: "<%= yeoman.app %>/components"
        relativeAssets: true

      dist: {}
      server:
        options:
          debugInfo: true

    concat:
      dist:
        files:
          "<%= yeoman.dist %>/scripts/scripts.js": [
            ".tmp/scripts/{,*/}*.js"
            "<%= yeoman.app %>/scripts/{,*/}*.js"
          ]

    useminPrepare:
      html: "<%= yeoman.app %>/index.html"
      options:
        dest: "<%= yeoman.dist %>"

    usemin:
      html: ["<%= yeoman.dist %>/{,*/}*.html"]
      css: ["<%= yeoman.dist %>/styles/{,*/}*.css"]
      options:
        dirs: ["<%= yeoman.dist %>"]

    imagemin:
      dist:
        files: [
          expand: true
          cwd: "<%= yeoman.app %>/images"
          src: "{,*/}*.{png,jpg,jpeg}"
          dest: "<%= yeoman.dist %>/images"
        ]

    cssmin:
      dist:
        files:
          "<%= yeoman.dist %>/styles/main.css": [
            ".tmp/styles/{,*/}*.css"
            "<%= yeoman.app %>/styles/{,*/}*.css"
          ]

    htmlmin:
      dist:
        options: {}

        #removeCommentsFromCDATA: true,
        #          // https://github.com/yeoman/grunt-usemin/issues/44
        #          //collapseWhitespace: true,
        #          collapseBooleanAttributes: true,
        #          removeAttributeQuotes: true,
        #          removeRedundantAttributes: true,
        #          useShortDoctype: true,
        #          removeEmptyAttributes: true,
        #          removeOptionalTags: true
        files: [
          expand: true
          cwd: "<%= yeoman.app %>"
          src: [
            "*.html"
            "views/*.html"
          ]
          dest: "<%= yeoman.dist %>"
        ]

    cdnify:
      dist:
        html: ["<%= yeoman.dist %>/*.html"]

    ngmin:
      dist:
        files: [
          expand: true
          cwd: "<%= yeoman.dist %>/scripts"
          src: "*.js"
          dest: "<%= yeoman.dist %>/scripts"
        ]

    uglify:
      dist:
        files:
          "<%= yeoman.dist %>/scripts/scripts.js": ["<%= yeoman.dist %>/scripts/scripts.js"]

    rev:
      dist:
        files:
          src: [
            "<%= yeoman.dist %>/scripts/{,*/}*.js"
            "<%= yeoman.dist %>/styles/{,*/}*.css"
            "<%= yeoman.dist %>/images/{,*/}*.{png,jpg,jpeg,gif,webp,svg}"
            "<%= yeoman.dist %>/styles/fonts/*"
          ]

    copy:
      dist:
        files: [
          expand: true
          dot: true
          cwd: "<%= yeoman.app %>"
          dest: "<%= yeoman.dist %>"
          src: [
            "*.{ico,txt}"
            ".htaccess"
            "components/**/*"
            "images/{,*/}*.{gif,webp}"
            "styles/fonts/*"
          ]
        ]

  grunt.renameTask "regarde", "watch"
  grunt.registerTask "server", [
    "clean:server"
    "coffee:dist"
    "compass:server"
    "livereload-start"
    "connect:livereload"
    "open"
    "watch"
  ]
  grunt.registerTask "test", [
    "clean:server"
    "coffee"
    "compass"
    "connect:test"
    "karma"
  ]
  grunt.registerTask "build", [
    "clean:dist"
    "jshint"
    "test"
    "coffee"
    "compass:dist"
    "useminPrepare"
    "imagemin"
    "cssmin"
    "htmlmin"
    "concat"
    "copy"
    "cdnify"
    "ngmin"
    "uglify"
    "rev"
    "usemin"
  ]
  grunt.registerTask "default", ["build"]

