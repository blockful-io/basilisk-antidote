//SPDX-License-Identifier: MIT
pragma solidity >=0.8.17 <0.9.0;

import { IRegistry } from "./interfaces/IRegistry.sol";
import { IReverseRegistrar } from "./interfaces/IReverseRegistrar.sol";

contract ReverseClaimer {
    bytes32 constant ADDR_REVERSE_NODE = 0x91d1777781884d03a6757a803996e38de2a42967fb37eeaca72729271025a9e2;

    constructor(IRegistry ensRegistry, address claimant) {
        IReverseRegistrar reverseRegistrar = IReverseRegistrar(IRegistry(ensRegistry).owner(ADDR_REVERSE_NODE));
        reverseRegistrar.claim(claimant);
    }
}
