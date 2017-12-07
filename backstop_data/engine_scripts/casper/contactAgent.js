module.exports = function (casper, scenario, vp) {
    casper.wait(10000);
    casper.click('.right-contact-agent button');
    casper.wait(250);
};
