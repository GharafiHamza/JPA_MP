package tools;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import models.articles;
import models.clients;

public class JpaConnection {
	
	public static EntityManager getEM() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gharafi_Micro_Projet");
		EntityManager em = emf.createEntityManager();
		return em;
	}
	
	public static String insertClientData(clients client) {
		
			EntityManager em = getEM();
			em.getTransaction().begin();
			em.persist(client);
			em.getTransaction().commit();
			em.close();
			return "inserted";			
		}


	public static String testLogin(String email, String pwd) {
		EntityManager em = getEM();
		String res = "checked";
		try {
			clients c = em.createQuery("SELECT b FROM clients as b WHERE b.email = :email",clients.class).setParameter("email", email).getSingleResult();
			if(!c.getMotpasse().equals(pwd)) {
				res = "le mot de passe incorrect , verifier le mot de passe !!";
			}
			return res;
		}catch (Exception e) {
			return "l'email est incorrect , verifier votre email !!";
		}

	}
	public static ArrayList<articles> getArticle(String categorie) {
		EntityManager em = getEM();
		ArrayList<articles> listArticles = new ArrayList<articles>();
		try {
			if(categorie == null || categorie.equals("All")) {
				listArticles = (ArrayList<articles>) em.createQuery("select c from articles c", articles.class).getResultList();
			}else {
				listArticles = (ArrayList<articles>) em.createQuery("select c from articles as c where c.categorie= :cat", articles.class).setParameter("cat", categorie).getResultList();
			}
			return listArticles;
		}catch (Exception e) {
			 return null;
		}
	}


	public static articles getArticleDets(int id) {
		EntityManager em = getEM();
		return em.createQuery("select a from articles as a where a.codearticle=:id",articles.class).setParameter("id", id).getSingleResult();
		
	}
	
	public static clients getClient(String email) {
		EntityManager entityManager = getEM();
		clients c = entityManager.createQuery("select c from clients as c where c.email=:email",clients.class).setParameter("email", email).getSingleResult();
		return c;
	}

	
}