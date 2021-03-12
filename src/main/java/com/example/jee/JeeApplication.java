package com.example.jee;

import com.example.jee.dao.ProduitRepository;
import com.example.jee.entities.Produit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class JeeApplication implements CommandLineRunner {
    @Autowired
    private ProduitRepository produitRepository;

    public static void main(String[] args) {
        SpringApplication.run(JeeApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        produitRepository.save(new Produit(null,"Introduction à l'economie", 30,9,"https://zupimages.net/up/21/06/70eh.jpg"));
        produitRepository.save(new Produit(null, "Introduction générale à l'économie", 45, 3, "https://zupimages.net/up/21/06/08p5.jpg"));
        produitRepository.save(new Produit(null, "Internet et l'informatique", 67, 11, "https://zupimages.net/up/21/06/e9zj.jpg"));
        produitRepository.save(new Produit(null, "Débuter en l'informatique", 150, 3, "https://zupimages.net/up/21/06/amhu.jpg"));
        produitRepository.save(new Produit(null, "Développement informatique", 87, 4, "https://zupimages.net/up/21/06/q606.jpg"));
        produitRepository.save(new Produit(null, "Economie de développement", 90, 10, "https://zupimages.net/up/21/06/b69k.jpg"));
        produitRepository.save(new Produit(null, "Math'X", 65, 11, "https://zupimages.net/up/21/06/ob75.jpg"));
        produitRepository.save(new Produit(null, "Déclic Mathématique", 30, 4, "https://zupimages.net/up/21/06/umsi.jpg"));
        produitRepository.save(new Produit(null, "L'anglais de A jusqu'à Z", 30, 7, "https://zupimages.net/up/21/06/4y07.jpg"));
        produitRepository.save(new Produit(null, "Mon cahier de français", 30, 15, "https://zupimages.net/up/21/06/5qkh.jpg"));
        produitRepository.save(new Produit(null, "Physiqye, chimie", 10, 15, "https://zupimages.net/up/21/06/af67.jpg"));
        produitRepository.save(new Produit(null, "Physique", 35, 15, "https://zupimages.net/up/21/06/am9w.jpg"));


    }
}
