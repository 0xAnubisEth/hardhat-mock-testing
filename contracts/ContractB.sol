// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

import {ContractA} from './ContractA.sol';

contract ContractB {
	address internal _contractA;

	modifier onlyAllowed() {
		_checkAllowance();
		_;
	}

	/**
	 * @dev Constructor function
	 * @param contractA ContractA address
	 */
	constructor(address contractA) {
		_contractA = contractA;
	}

	/**
	 * @dev Tests the onlyAllowed method from ContractA
	 * Reverts if the method returns false
	 */
	function doSomething() external view onlyAllowed returns (bool success_) {
		success_ = true;
	}

	function _checkAllowance() internal view {
		if (!ContractA(_contractA).allowance()) {
			revert();
		}
	}
}
