pragma solidity >=0.4.24 <0.6.0;

import "./ERC20.sol";
import "./ERC20Detailed.sol";

/**
 * @title IE_Token
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract IE_Token is ERC20, ERC20Detailed {
    uint256 public constant INITIAL_SUPPLY = 210000000 * (10 ** 8);

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("Intelligent education", "IE COIN", 8) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
