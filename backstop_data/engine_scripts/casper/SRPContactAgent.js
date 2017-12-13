module.exports = function (casper, scenario, vp) {
    casper.wait(1000);
    casper.click('.specialists-container button');
    casper.wait(250);
};
