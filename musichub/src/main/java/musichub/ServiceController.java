package musichub;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
  import musichub.ProductDaoImpl;
@Service
public class ServiceController 
{
 
	@Autowired
	ProductDaoImpl dao;
	
	public ProductDaoImpl getProduct() {
		
		return dao;
	}
	
	public ArrayList<Product> getAllProducts()
	{
		
		return dao.getproductlist();
		
	}
	public void saveProduct(Product prod)
	{
		 dao.saveProduct(prod);
	}
	
    		

}


