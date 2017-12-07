module.exports = function (casper, scenario, vp) {
    casper.wait(10000);
    casper.click('.ant-tabs-tabpane  div  a');
    casper.wait(250);
};
