package com.example.jee.controller;

import com.example.jee.dao.ProduitRepository;
import com.example.jee.dao.UserRepository;
import com.example.jee.entities.Produit;
import com.example.jee.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;


@Controller
public class ProduitController {
    @Autowired
    ProduitRepository produitRepository;
    @Autowired
    UserRepository userRepository;

    List<Produit> pageProduitsPanier = new ArrayList<>();
    private double prixTotal = 0;

    @RequestMapping(value="/")
    public String home() {
        return "redirect:/products";
    }

    @GetMapping(value="/products")
    public String chercher(Model model,
                           @RequestParam(name="page", defaultValue = "0")int page,
                           @RequestParam(name="size", defaultValue="6") int size,
                           @RequestParam(name="motCle", defaultValue="") String mc){
        Page<Produit> produits =produitRepository.findByDesignationContains(mc,PageRequest.of(page, size));
        model.addAttribute("pageProduits",produits.getContent());
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size);
        model.addAttribute("motCle", mc);
        model.addAttribute("pages", new int[produits.getTotalPages()]);
        return "products";
    }
    @GetMapping(path="/deleteProduit")
    public String delete(Long id, String page, String size, String mc ) {
        produitRepository.deleteById(id);
        return "redirect:/produits?page="+page+"&motCle="+mc+"&size="+size;
    }

    @GetMapping(path="/AjoutPanier")
    public String panier(Model model,Long idProduit){
        if (idProduit != null) {
            Produit pageProduitsPanierLoc= produitRepository.getOne(idProduit);
            pageProduitsPanier.add(pageProduitsPanierLoc);
            prixTotal = prixTotal + pageProduitsPanierLoc.getPrix();
            model.addAttribute("pageProduitsPanier", pageProduitsPanier);
            model.addAttribute("prixTotal", prixTotal);
            return "panier";
        }
        else {
            model.addAttribute("pageProduitsPanier", pageProduitsPanier);
            model.addAttribute("prixTotal", prixTotal);
            return "panier"; }

    }
    @GetMapping(path="/deleteProduitPanier")
    public String deletePanier(Model model, Long id) {
        for(int i=0 ; i < pageProduitsPanier.size();i++) {
            if (id == pageProduitsPanier.get(i).getId()) {
                prixTotal = prixTotal - pageProduitsPanier.get(i).getPrix();
                pageProduitsPanier.remove(i);
            }
        }
        model.addAttribute("pageProduitsPanier", pageProduitsPanier);
        model.addAttribute("prixTotal", prixTotal);

        return "panier";
    }
    @GetMapping(path="/payment")
    public String payment (Model model){
        model.addAttribute("prixTotal", prixTotal);
        return "payment";
    }
    @GetMapping(path="/login")
    public String login(Model model){
        return "login";
    }

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());

        return "signup_form";
    }
    @PostMapping("/process_register")
    public String processRegister(User user) {
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String encodedPassword = passwordEncoder.encode(user.getPassword());
        user.setPassword(encodedPassword);
        userRepository.save(user);
        return "register_success";
    }

}
