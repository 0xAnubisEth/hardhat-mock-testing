// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

contract ContractA {
	/**
	 * @return allowance_ always is false
	 */
	function allowance() external pure returns (bool allowance_) {
		allowance_ = false;
	}
}
