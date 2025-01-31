// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import "forge-std/Test.sol";
import {SignedConverter} from "../libraries/SignedConverter.sol";

contract SignedConverterTest is Test {
    function testCannotConvertNegativeIntToUint(int16 n) public {
        vm.assume(n < 0);
        vm.expectRevert(bytes("QuantMath: negative int"));
        SignedConverter.intToUint(n);
    }
}
