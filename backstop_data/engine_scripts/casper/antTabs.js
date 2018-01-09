module.exports = function (casper, scenario, vp) {
    casper.wait(1000);
    casper.click('#listing-features .show-more-button a');
    casper.wait(250);
};
