package com.galosoft.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.galosoft.model.Product;

public class ProductDao {
	
	private List<Product> productList;
	
	public List<Product> getProductList(){
		Product product1 = new Product();
		Product product2 = new Product();
		Product product3 = new Product();
		
		product1.setProductId("1");
		product1.setProductName("Reloj Modelo B1");
		product1.setProductDes("Reloj contra agua 30 metros cuerda infinita");
		product1.setProductCondition("Nuevo");
		product1.setProductStatus("Activo");
		product1.setProductPrice(200.00D);
		product1.setProductUnits(2);
		
		product2.setProductId("2");
		product2.setProductName("Reloj Modelo B2");
		product2.setProductDes("Reloj contra agua 30 metros cuerda infinita");
		product2.setProductCondition("Nuevo");
		product2.setProductStatus("Activo");
		product2.setProductPrice(200.00D);
		product2.setProductUnits(1);
		
		product3.setProductId("3");
		product3.setProductName("Reloj Modelo B3");
		product3.setProductDes("Reloj contra agua 30 metros cuerda infinita");
		product3.setProductCondition("Nuevo");
		product3.setProductStatus("Activo");
		product3.setProductPrice(200.00D);
		product3.setProductUnits(3);
		
		
		productList = new ArrayList<Product>();
		productList.add(product1);
		productList.add(product2);
		productList.add(product3);
		
		return productList;
	}

	public Product getProductById(String productId) throws IOException {
		for(Product product: getProductList()) {
			if(product.getProductId().equals(productId)) {
				return product;
			}
		}
		throw new IOException("No product found");
	}

}
