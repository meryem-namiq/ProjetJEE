package amoa.webservices;

import javax.jws.*;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

import amoa.domain.Product;
import amoa.domain.Products;
import amoa.exceptions.NoSuchProductException;


@WebService
@SOAPBinding(style = Style.RPC)
public interface ProductsManager {
	
	@WebMethod
	@WebResult(name= "productId")
    public long addProduct (@WebParam(name ="product") Product product) ;

	@WebMethod
	@WebResult(name= "product")
	public Product getProduct (@WebParam(name ="productId" ) long id) throws NoSuchProductException;

	@WebMethod
	@WebResult(name= "price")
	public double getProductPrice (@WebParam(name = "productld") long id) throws NoSuchProductException;

	@WebMethod
	@WebResult(name= "products")
	public Products getProducts();

	@WebMethod
	@WebResult(name= "product")
	public Product updateProduct(@WebParam (name = "product") Product product) ;

	@WebMethod
	public boolean deleteProduct(@WebParam (name = "productld") long id);

	@WebMethod
	public boolean deleteAllProducts ();
	
}

