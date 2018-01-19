module.exports = function (casper, scenario, vp) {
    casper.wait(1000);
    casper.click(".contact-form-bottom .expand-policy-note-link");
    casper.wait(250);
};
