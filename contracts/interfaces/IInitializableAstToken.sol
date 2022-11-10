// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;

import {ILendingPool} from './ILendingPool.sol';
import {IAustralisIncentivesController} from './IAustralisIncentivesController.sol';

/**
 * @title IInitializableAstToken
 * @notice Interface for the initialize function on AstToken
 * @author Australis
 **/
interface IInitializableAstToken {
  /**
   * @dev Emitted when an astToken is initialized
   * @param underlyingAsset The address of the underlying asset
   * @param pool The address of the associated lending pool
   * @param treasury The address of the treasury
   * @param incentivesController The address of the incentives controller for this astToken
   * @param astTokenDecimals the decimals of the underlying
   * @param astTokenName the name of the astToken
   * @param astTokenSymbol the symbol of the astToken
   * @param params A set of encoded parameters for additional initialization
   **/
  event Initialized(
    address indexed underlyingAsset,
    address indexed pool,
    address treasury,
    address incentivesController,
    uint8 astTokenDecimals,
    string astTokenName,
    string astTokenSymbol,
    bytes params
  );

  /**
   * @dev Initializes the astToken
   * @param pool The address of the lending pool where this astToken will be used
   * @param treasury The address of the Australis treasury, receiving the fees on this astToken
   * @param underlyingAsset The address of the underlying asset of this astToken (E.g. WETH for astWETH)
   * @param incentivesController The smart contract managing potential incentives distribution
   * @param astTokenDecimals The decimals of the astToken, same as the underlying asset's
   * @param astTokenName The name of the astToken
   * @param astTokenSymbol The symbol of the astToken
   */
  function initialize(
    ILendingPool pool,
    address treasury,
    address underlyingAsset,
    IAustralisIncentivesController incentivesController,
    uint8 astTokenDecimals,
    string calldata astTokenName,
    string calldata astTokenSymbol,
    bytes calldata params
  ) external;
}
