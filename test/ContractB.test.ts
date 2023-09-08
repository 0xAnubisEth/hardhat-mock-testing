import { describe } from 'mocha'
import { ethers } from 'hardhat'
import { type ContractA, type ContractB } from '../typechain-types'
import { expect } from 'chai'

describe('ContractB', () => {
	let contractA: ContractA
	let contractB: ContractB
	beforeEach(async () => {
		contractA = await (
			await ethers.getContractFactory('ContractA')
		).deploy()
		contractB = await (
			await ethers.getContractFactory('ContractB')
		).deploy(contractA.getAddress())
	})

	it('Happy path', async () => {
        // TODO: Mock contract A to return true
		await expect(contractB.doSomething()).reverted
	})

	it('Unhappy path', async () => {
        await expect(contractB.doSomething()).reverted
    })
})
