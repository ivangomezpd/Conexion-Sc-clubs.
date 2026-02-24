// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "./Interfaces/IResultado.sol";

import "./Jugador.sol";
import "./Equipo.sol";

contract Resultado is IResultado {
    Jugador public jugador;
    Equipo public equipo;

    constructor(address _jugadorAddress, address _equipoAddress) {
        jugador = Jugador(_jugadorAddress);
        equipo = Equipo(_equipoAddress);
    }

    function getFinalScore() public view override returns (uint256) {
        return jugador.getTalento() * equipo.getMultiplicador();
    }

    function getDetails() external view override returns (string memory, string memory, uint256) {
        return (
            jugador.getNombre(),
            equipo.getNombreEquipo(),
            getFinalScore()
        );
    }
}
