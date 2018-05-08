package com.pxxy.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.pxxy.dao.ProductsDao;
import com.pxxy.entity.Match;
import com.pxxy.entity.Products;
import com.pxxy.entity.User;
@Repository(value = "productsDao")
public class ProductsDaoimpl implements ProductsDao{
	@Resource(name = "hibernateTemplate")
	private HibernateTemplate hibernateTemplate;
	@Override
	public void delProducts(Products products) {
		
		hibernateTemplate.delete(products);
		
	}

	@Override
	public Products findProductsById(int products_id) {
		
		return hibernateTemplate.get(Products.class, products_id);
	}

	@Override
	public void updateProducts(Products products) {
		
		hibernateTemplate.update(products);
		
	}

	@Override
	public void addProducts(Products products) {
		
		hibernateTemplate.save(products);
		
	}

	@Override
	public List<Products> findAllProductsByMatch_id(int match_id) {
		
		return (List<Products>) hibernateTemplate.get(Products.class, match_id);
	}

	@Override
	public List<Products> findFourProducts() {
		// TODO Auto-generated method stub
		DetachedCriteria criteria = DetachedCriteria.forClass(Products.class);
		criteria.addOrder(Order.desc("products_id"));
		return (List<Products>) hibernateTemplate.findByCriteria(criteria , 0, 4);
	}

	@Override
	public List<Products> findAllProducts(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		DetachedCriteria criteria = DetachedCriteria.forClass(Products.class);
		return (List<Products>) hibernateTemplate.findByCriteria(criteria , (currentPage-1)*pageSize, pageSize);
	}

	@Override
	public int getCount() {
		String sql = "select count(*) from Products where 1=1";
		List list1 = new ArrayList<>();
		List<Long> list = (List<Long>) hibernateTemplate.find(sql, list1.toArray());		
		return list.get(0).intValue();
	}

}
