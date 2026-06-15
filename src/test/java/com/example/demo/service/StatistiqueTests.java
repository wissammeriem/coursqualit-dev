package com.example.demo.service;

import com.example.demo.data.Voiture;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class StatistiqueTests {

    @Test
    void prixMoyenAvecUneVoiture() {
        StatistiqueImpl statistique = new StatistiqueImpl();
        statistique.ajouter(new Voiture("Renault", 10000));
        Echantillon resultat = statistique.prixMoyen();
        assertEquals(1, resultat.getNombreDeVoitures());
        assertEquals(10000, resultat.getPrixMoyen());
    }

    @Test
    void prixMoyenAvecPlusieursVoitures() {
        StatistiqueImpl statistique = new StatistiqueImpl();
        statistique.ajouter(new Voiture("Renault", 10000));
        statistique.ajouter(new Voiture("Peugeot", 20000));
        statistique.ajouter(new Voiture("Citroen", 30000));
        Echantillon resultat = statistique.prixMoyen();
        assertEquals(3, resultat.getNombreDeVoitures());
        assertEquals(20000, resultat.getPrixMoyen());
    }

    @Test
    void prixMoyenSansVoiture() {
        StatistiqueImpl statistique = new StatistiqueImpl();
        assertThrows(ArithmeticException.class, statistique::prixMoyen);
    }
}
