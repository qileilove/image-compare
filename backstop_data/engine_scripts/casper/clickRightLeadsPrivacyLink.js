module.exports = function (casper, scenario, vp) {
    casper.wait(1000);
    casper.click(".contact-form-top .expand-policy-note-link");
    casper.wait(250);
};
