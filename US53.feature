Feature: Vista de la Sección "¿Cómo Funciona?"
  Como Visitante
  Quiero ver los pasos explicativos del proceso
  Para entender fácilmente cómo funciona AgroNexo.

  Background:
    Given que estoy en el Landing Page

  Scenario: Visualización de los pasos explicativos
    When me desplazo a la sección "¿Cómo Funciona?"
    Then debo ver los pasos organizados en tarjetas o bloques

  Scenario: Claridad en la lectura de pasos
    Then cada paso debe incluir un título y una breve descripción

  Scenario: Adaptación mobile-first
    Given que uso un teléfono
    Then el orden y tamaño de los pasos deben adaptarse al dispositivo