package models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity

public class articles {
	
	@Id
	int codearticle;
	String titre;
	String auteur;
	String editeur ;
	String prix;
	int stock;
	String categorie;
	String photo;
	
	
	public articles() {
		
	}

	public articles(int codearticle, String titre, String auteur, String editeur, String prix, int stock,
			String categorie, String photo) {
		super();
		this.codearticle = codearticle;
		this.titre = titre;
		this.auteur = auteur;
		this.editeur = editeur;
		this.prix = prix;
		this.stock = stock;
		this.categorie = categorie;
		this.photo = photo;
	}

	public int getCodearticle() {
		return codearticle;
	}
	public void setCodearticle(int codearticle) {
		this.codearticle = codearticle;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getAuteur() {
		return auteur;
	}
	public void setAuteur(String auteur) {
		this.auteur = auteur;
	}
	public String getEditeur() {
		return editeur;
	}
	public void setEditeur(String editeur) {
		this.editeur = editeur;
	}
	public String getPrix() {
		return prix;
	}
	public void setPrix(String prix) {
		this.prix = prix;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getCategorie() {
		return categorie;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	

}
