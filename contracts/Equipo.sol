// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Equipo {
    string public nombreEquipo;
    uint256 public multiplicadorEntrenamiento;

    constructor(string memory _nombre, uint256 _multiplicador) {
        nombreEquipo = _nombre;
        multiplicadorEntrenamiento = _multiplicador;
    }

    function getMultiplicador() external view returns (uint256) {
        return multiplicadorEntrenamiento;
    }

    function getNombreEquipo() external view returns (string memory) {
        return nombreEquipo;
    }
}
