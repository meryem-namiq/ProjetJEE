package amoa.webservices;

import java.util.ArrayList;

import javax.jws.WebService;

import amoa.domain.Product;
import amoa.domain.Products;
import amoa.exceptions.NoSuchProductException;

@WebService(endpointInterface="amoa.webservices.ProductsManager")
public class ProductsManageImpl implements ProductsManager {

	private static Products products = new Products(new ArrayList<Product>());
	
	public long addProduct (Product product) {
		products.add(product);
		return product.getId();
		}

	public Product getProduct(long id) throws NoSuchProductException {
		Product product=products.get(id);
		
		if(product != null) {
			return product;
		}
		else {
			throw new NoSuchProductException("No such Product");
			
		}
	}

	public double getProductPrice(long id) throws NoSuchProductException {
		return products.get(id).getPrice();
	}

	public Products getProducts() {
		return products;
	}

	public Product updateProduct(Product product) {
		
		return null;
	}

	public boolean deleteProduct(long id) {
		return products.remove(id);
	}

	public boolean deleteAllProducts() {
		return products.removeAll();
	}
	
}
