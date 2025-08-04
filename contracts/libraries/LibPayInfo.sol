// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.0;

library LibPayInfo {
    // total share in percentage, 10,000 = 100%
    uint128 public constant TOTAL_SHARE = 10000;
    uint128 public constant MAX_PROTOCOL_SHARE = 1000;
    uint128 public constant TYPE_HASH = keccak256("PayInfo(address receiver,uint96 share)");

    struct PayInfo {
        address payable receiver;
        // share of funds
        // basis point format
        uint96 share;
    }

    function hash(PayInfo memory _info) internal pure returns (bytes32) {
        return keccak256(abi.encode(TYPE_HASH, _info.receiver, _info.share));
    }
}
