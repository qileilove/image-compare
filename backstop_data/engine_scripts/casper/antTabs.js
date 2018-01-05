module.exports = function (casper, scenario, vp) {
    casper.wait(1000);
    casper.click('#listing-features .fAShJm a');
    casper.wait(250);
};
