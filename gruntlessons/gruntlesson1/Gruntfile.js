module.exports = function (grunt) {

    grunt.initConfig({
        jshint: {
            files: ['Gruntfile.js', 'src/*.js'],
            options: {
                globals: {
                    jQuery: true
                }
            }
        },
        watch: {
            files: ['<%= jshint.files %>'],
            tasks: ['jshint']
        }
    });

    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('default', ['jshint']);

};



/////////////////////////////////////////////

// module.exports = function (grunt) {
//     grunt.initConfig({
//         uglify: {
//             dist: {
//                 src: 'src/test.js', dest: 'dist/test.min.js'
//             },
//         }
//     });
//     grunt.loadNpmTasks('grunt-contrib-uglify'); grunt.registerTask('default', ['uglify']);
// };



// module.exports = function (grunt) {
//     grunt.initConfig({
//         jshint: {
//             all: ['src/*.js']
//         }
//     });
//     grunt.loadNpmTasks('grunt-contrib-jshint');
//     grunt.registerTask('default', ['jshint']);
// }

// module.exports = function (grunt) {
//     grunt.registerTask('greet', 'greet the user ', function () {
//         console.log("Hello World 	")
//     });

//     grunt.registerTask("work", "Do some work ", function (name, work) {
//         console.log("Hello ", name, "Does ", work);
//     });

//     grunt.registerTask('default', ['greet', 'work:John:developer'])
// };

