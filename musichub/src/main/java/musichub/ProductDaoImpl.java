package musichub;
import java.util.*;
import org.springframework.stereotype.Repository;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import musichub.Product;
import musichub.ProductDAO;



@Repository
public class ProductDaoImpl implements ProductDAO
{
	ArrayList<Product> product;
	@Autowired
	SessionFactory factory;

	public Session getSession()
	{
		
		return factory.openSession();
				
	}
    
	public void saveProduct(Product prod)
	{
		
		Session session = getSession();
		System.out.println(session);
		if(session!=null)
		{
		Transaction tran=session.beginTransaction();
		
		prod.setPID(1001);
		prod.setType("Musical Guitar");
		prod.setBrand("dgd,dgd");
		prod.setPrice(10000);
		prod.setCategory("guitar");
		
	
		session.save(prod);
	    System.out.println("Record inserted");
		tran.commit();
		session.close();
		}
	}
	
@SuppressWarnings("unchecked")
public ArrayList<Product> getproductlist()
{   

Session session = getSession();
Transaction tran = session.beginTransaction();
ArrayList<Product> products= null;	
Query query=session.createQuery("from Product");

products=(ArrayList<Product>)query.list();
System.out.println(products);;
tran.commit();
session.close();

return products;	
}

	public ArrayList<Product> getProduct()
	{
		try{
			Session s=getSession();
			Transaction tx=s.beginTransaction();
			ArrayList<Product> l=(ArrayList<Product>) s.createQuery("From Product").list();
			tx.commit();
			s.close();
		return l;
		}catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
		
	}

	
	
}
