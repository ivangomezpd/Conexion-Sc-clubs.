// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Jugador {
    string public nombre;
    uint256 public talento;

    constructor(string memory _nombre, uint256 _talento) {
        nombre = _nombre;
        talento = _talento;
    }

    function getTalento() external view returns (uint256) {
        return talento;
    }

    function getNombre() external view returns (string memory) {
        return nombre;
    }
}
