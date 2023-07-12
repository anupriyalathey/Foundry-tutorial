// SPDX-License_identifier: MIT

pragma solidity 0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast(); // everything after this line should be sent to rpc
        SimpleStorage simpleStorage = new SimpleStorage(); // Contract variable = new Contract();
        vm.stopBroadcast(); // everything before this line should be sent to rpc
        return simpleStorage;
    }
}
