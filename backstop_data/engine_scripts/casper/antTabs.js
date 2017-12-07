module.exports = function (casper, scenario, vp) {
    casper.wait(10000);
    casper.click('ant-tabs .ant-tabs-tabpane a');
    casper.wait(250);
};
