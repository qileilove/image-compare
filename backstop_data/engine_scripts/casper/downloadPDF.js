module.exports = function (casper, scenario, vp) {
    casper.wait(1000);
    casper.click('#download-pdf button');
    casper.wait(250);
};
