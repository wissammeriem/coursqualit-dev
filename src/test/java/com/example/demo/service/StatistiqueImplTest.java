package com.example.demo.service;

import com.example.demo.data.Voiture;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class StatistiqueImplTest {

    private StatistiqueImpl statistique;

    @BeforeEach
    void setUp() {
        statistique = new StatistiqueImpl();
    }

    @Test
    void testAjouterUneVoiture() {
        Voiture v = new Voiture("Clio", 10000);
        statistique.ajouter(v);
        Echantillon e = statistique.prixMoyen();
        assertEquals(1, e.getNombreDeVoitures());
        assertEquals(10000, e.getPrixMoyen());
    }

    @Test
    void testPrixMoyenAvecDeuxVoitures() {
        statistique.ajouter(new Voiture("Ferrari", 20000));
        statistique.ajouter(new Voiture("Fiat", 10000));
        Echantillon e = statistique.prixMoyen();
        assertEquals(2, e.getNombreDeVoitures());
        assertEquals(15000, e.getPrixMoyen());
    }

    @Test
    void testPrixMoyenListeVide() {
        assertThrows(ArithmeticException.class, () -> {
            statistique.prixMoyen();
        });
    }
}
