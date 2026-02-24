# Conexion Sc Clubs: Interconnected Smart Contracts

Este proyecto es un ejemplo educativo de cómo conectar tres contratos inteligentes en Solidity utilizando interfaces. Se desarrolla en el contexto del mundo del deporte, simulando la interacción entre un Jugador, un Equipo y un Resultado final.

## 🏗️ Arquitectura del Proyecto

La estructura del proyecto separa las definiciones de las interfaces de la implementación lógica para facilitar la modularidad y el mantenimiento.

```text
/contracts
├── Jugador.sol         # Almacena datos del atleta (nombre, talento)
├── Equipo.sol          # Almacena datos del club (nombre, multiplicador)
├── Resultado.sol       # Conecta ambos contratos y calcula el score
└── /Interfaces
    └── IResultado.sol  # Interfaz que define las funciones de Resultado
```

## 🛠️ Requisitos Técnico

- **Solidity Version:** `0.8.24`
- **Herramientas recomendadas:** [Remix IDE](https://remix.ethereum.org/), Metamask.

## 🚀 Guía de Despliegue en Remix

Para que la conexión funcione, los contratos deben desplegarse en un orden específico:

1.  **Desplegar `Jugador.sol`:** Introduce un nombre y un nivel de talento (número).
2.  **Desplegar `Equipo.sol`:** Introduce el nombre del equipo y un multiplicador de entrenamiento.
3.  **Desplegar `Resultado.sol`:** En el constructor, pega las direcciones (`address`) de los contratos `Jugador` y `Equipo` desplegados anteriormente.

Una vez desplegados, puedes usar la función `getDetails()` en el contrato `Resultado` para ver cómo obtiene la información de los otros dos contratos automáticamente.

## 📝 Ejemplo de Lógica

El contrato `Resultado` realiza un cálculo basado en el estado de los dos contratos externos:
`Score Final = Talento (del Jugador) * Multiplicador (del Equipo)`

---
Desarrollado como ejemplo de integración modular en Blockchain.
