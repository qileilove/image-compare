module.exports = function (casper, scenario, vp) {
    casper.wait(10000);
    casper.click('.image-bar .icon');
    casper.wait(250);
};
