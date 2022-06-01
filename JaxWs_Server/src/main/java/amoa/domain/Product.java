package amoa.domain;
 import javax.xml.bind.annotation.*;
 
 @XmlRootElement(name="product")
 @XmlAccessorType(XmlAccessType.FIELD)
public class Product {

	 private Long id;
	 private String label;
	 private double price;
	 
	 
	public Product() {
		super();
	}
	public Product(Long id, String label, double price) {
		super();
		this.id = id;
		this.label = label;
		this.price = price;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	 
	 
	 
	 
	
}
