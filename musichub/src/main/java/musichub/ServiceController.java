package musichub;
import java.util.ArrayList;
import org.springframework.stereotype.Service;
  
@Service
public class ServiceController 
{
 
  
     ProductDAO pdi;
     public ArrayList<Product> getProduct() 
	{
		
		pdi=new ProductDaoImpl();
		return pdi.getProduct();
	}

}