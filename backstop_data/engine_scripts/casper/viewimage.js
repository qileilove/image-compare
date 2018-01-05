module.exports = function (casper, scenario, vp) {
    casper.wait(1000);
    casper.click('.image-bar .icon');
    casper.wait(250);
};
