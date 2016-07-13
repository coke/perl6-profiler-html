module.exports = function(grunt) {
    
  grunt.initConfig({
  htmlmin: {                                     // Task 
    dist: {                                      // Target 
      options: {                                 // Target options 
        removeComments: true,
        collapseWhitespace: true
      },
      files: {                                   // Dictionary of files 
          'gen/sample_min.html': 'gen/sample.html', // 'destination': 'source'
      }
    }
  }
});

grunt.loadNpmTasks('grunt-contrib-htmlmin');
 
grunt.registerTask('default', ['htmlmin']);
};
