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
    // SimpleStorage[] public simpleStorageArray;
    // function createSimpleStorageContract() public {
    //     SimpleStorage simpleStorage = new SimpleStorage();
    //     simpleStorageArray.push(simpleStorage);
    // }
    // function sfStore(
    //     uint256 _simpleStorageIndex,
    //     uint256 _simpleStorageNumber
    // ) public {
    //     // Address
    //     // ABI
    //     SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(
    //         _simpleStorageNumber
    //     );
    // }
    // function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
    //     return
    //         SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]))
    //             .retrieve();
    // }
}
