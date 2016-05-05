package musichub;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;


public class ProductDaoImpl implements ProductDAO
{
	ArrayList<Product> products;
	
	public ArrayList<Product> getProduct()
	{
			products=new ArrayList<Product>();
	
		    products.add(new Product("M001", "Piano", "Music", 123,"Music Instruments "));
		    products.add(new Product("M002", "Guitar", "Yamaha", 123,"Guitar"));
		    products.add(new Product("M003", "tabla", "marshall", 123,"Tabla"));
		    
		    
		return products;
	}

	
	
}
