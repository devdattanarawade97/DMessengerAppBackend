const DMessageApp = artifacts.require("DMessageApp");
module.exports = function (deployer) {
  deployer.deploy(DMessageApp);
};
