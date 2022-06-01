package amoa.domain;

import java.util.List;

import javax.xml.bind.annotation.*;

@XmlRootElement(name="product")
@XmlAccessorType(XmlAccessType.FIELD)

public class Products {

	@XmlElement(name="product")
	private List<Product> products;

	
	public Products() {
		super();
	}

	public Products(List<Product> products) {
		super();
		this.products = products;
	}

	public long add(Product product) {
		products.add(product);
		return product.getId();
	}
	public Product get(long id) {
		for(Product product : products ) {
			if(id==product.getId()) {
				return product;
			}
		}
		return null;
	}
	
	public boolean remove(long id) {
		for(int i=0 ; i< products.size(); i++ ) {
			if(id==products.get(i).getId()) {
				products.remove(i);
				return true;
			}
		}
		return false;
	}
	public boolean removeAll() {
		products.clear();
		return true;
	}
	
	
}
