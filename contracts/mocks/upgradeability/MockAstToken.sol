// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;

import {AstToken} from '../../protocol/tokenization/AstToken.sol';
import {ILendingPool} from '../../interfaces/ILendingPool.sol';
import {IAustralisIncentivesController} from '../../interfaces/IAustralisIncentivesController.sol';

contract MockAstToken is AstToken {
  function getRevision() internal pure override returns (uint256) {
    return 0x2;
  }
}
