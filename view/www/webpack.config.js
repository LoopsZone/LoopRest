const component = 'Startup';

const path = require('path');
const webpack = require('webpack');

module.exports = {
    mode: "development",
    entry: ['babel-polyfill', './' + component + '/assets/js/' + component + '.js'],

    plugins: [
        new webpack.DefinePlugin({'process.env.NODE_ENV': "'production'"})
    ],

    output: {
        path: path.resolve('./' + component + '/assets/js/'),
        filename: process.env.NODE_ENV === 'production' ? component + new Date().getTime() + '.min.js' : 'bundle.js'
    },

    devtool: "source-map"
};