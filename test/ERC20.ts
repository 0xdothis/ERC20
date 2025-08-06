import {
  time,
  loadFixture,
} from "@nomicfoundation/hardhat-toolbox/network-helpers";
import { anyValue } from "@nomicfoundation/hardhat-chai-matchers/withArgs";
import { expect } from "chai";
import hre from "hardhat";

describe("ERC20", function () {
  let ERC20: Contract;
  let owner: Signer;
  let otherAccount: Signer[];

  beforeEach(async () => {
    // Contracts are deployed using the first signer/account by default
    [owner, ...otherAccount] = await hre.ethers.getSigners();

    erc20Contract = ERC20.deployContract("ERC20", []);

    return { owner, otherAccount };
  });

  describe("Deployment", function () {});

  describe("Tranfers", function () {
    describe("Validations", function () {});

    describe("Events", function () {});
  });
});
