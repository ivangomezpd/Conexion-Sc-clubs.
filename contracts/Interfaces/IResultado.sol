// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IResultado {
    function getFinalScore() external view returns (uint256);
    function getDetails() external view returns (string memory, string memory, uint256);
}
