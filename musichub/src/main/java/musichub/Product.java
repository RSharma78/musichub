package musichub;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Repository;
@Entity
@Table(name = "Product")
public class Product 
{
	@Id
	@GeneratedValue
	private int pid;
	private String type;
	private String brand;
	private int price;
	private String category;
	
	public Product()
	{
		
	}
	public Product(int pid,String type,String brand,int price,String category)
	{
		this.pid=pid;
		this.type=type;
		this.brand=brand;
		this.price=price;
		this.category=category;
	}
	
	public int getPID()
	{
		return this.pid;
	}
	public void setPID(int pid)
	{
		this.pid=pid;
	}
	
	public String getType()
	{
		return this.type;
	}
	public void setType(String type)
	{
		this.type=type;
	}
	
	public String getBrand()
	{
		return this.brand;
	}
	public void setBrand(String brand)
	{
		this.brand=brand;
	}
	
	public String getCategory()
	{
		return this.category;
	}
	public void setCategory(String category)
	{
		this.category=category;
	}
	
	public int getPrice()
	{
		return this.price;
	}
	
	public void setPrice(int price)
	{
		this.price=price;
	}
	
	
	
	
	

}
