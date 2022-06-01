package amoa.server;

import javax.xml.ws.Endpoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import amoa.webservices.ProductsManageImpl;

public class ServicePublisher {
	 static Logger logger=  LoggerFactory.getLogger(ServicePublisher.class);
	
	public static void main(String[] args) {
		logger.info("Saarting server");
		Endpoint.publish("http://localhost:8080/webservices/ProductSManager", new ProductsManageImpl());
		logger.info("Server started");
	}
}
