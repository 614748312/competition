package com.pxxy.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "products_tab")
public class Products {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int products_id;
	private String products_name;
	private String products_author;
	private String products_text;
	private String pic_path;
	@ManyToOne
	@JoinColumn(name="match_id",referencedColumnName="match_id")
	public String getProducts_text() {
		return products_text;
	}

	public void setProducts_text(String products_text) {
		this.products_text = products_text;
	}

	public String getPic_path() {
		return pic_path;
	}

	public void setPic_path(String pic_path) {
		this.pic_path = pic_path;
	}

	@ManyToOne
	@JoinColumn(name = "match_id", referencedColumnName = "match_id")
	private Match match;
	public int getProducts_id() {
		return products_id;
	}

	public void setProducts_id(int products_id) {
		this.products_id = products_id;
	}

	public String getProducts_name() {
		return products_name;
	}

	public void setProducts_name(String products_name) {
		this.products_name = products_name;
	}

	public String getProducts_author() {
		return products_author;
	}

	public void setProducts_author(String products_author) {
		this.products_author = products_author;
	}

	public Match getMatch() {
		return match;
	}

	public void setMatch(Match match) {
		this.match = match;
	}

	@Override
	public String toString() {
		return "Products [products_id=" + products_id + ", products_name=" + products_name + ", products_author="
				+ products_author + ", products_text=" + products_text + ", pic_path=" + pic_path + ", match=" + match
				+ "]";
	}

	
	}

	
	

	


