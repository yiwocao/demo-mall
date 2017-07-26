fis.match('*', {
    release: '/static/$0'
});

fis.match('*.html', {
    release: '/$0'
});

fis.match('::package', {
    postpackager: fis.plugin('loader', {
        allInOne: false,
        sourceMap: true,
        useInlineMap: true
    })
});

fis.media("prod").match('*.{js,css}', {
    useHash: true
}).match('config.js', {
    useHash: false
});

fis.media("prod").match("**.js", {
    optimizer: fis.plugin('uglify-js')
});

fis.media("prod").match("/js/config.js", {
    optimizer: null,
    packTo: '/config/config.js'
});

fis.media("prod").match("**.css", {
    optimizer: fis.plugin('clean-css')
});

fis.media('prod').match('*.png', {
    optimizer: fis.plugin('png-compressor')
});
