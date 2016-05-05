package musichub;

public class Product 
{
	private String pid;
	private String type;
	private String brand;
	private int price;
	private String category;
	
	public Product(String pid,String type,String brand,int price,String category)
	{
		this.pid=pid;
		this.type=type;
		this.brand=brand;
		this.price=price;
		this.category=category;
	}
	
	public String getPID()
	{
		return this.pid;
	}
	public void setPID(String pid)
	{
		this.pid=pid;
	}
	
	public String getType()
	{
		return this.type;
	}
	public void setType(String type)
	{
		this.pid=type;
	}
	
	public String getBrand()
	{
		return this.brand;
	}
	public void setBrand(String brand)
	{
		this.pid=brand;
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
