package com.example.demo.web;

public class PasDeVoitureException extends Exception {
    public PasDeVoitureException() {
        super("Aucune voiture disponible");
    }
}