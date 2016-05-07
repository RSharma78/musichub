package musichub;

import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
public class HelloController 
{
	@Autowired
	ServiceController x;
	
	 @RequestMapping("/Products")
		public ModelAndView hello2()
		{
		 ModelAndView mv=new ModelAndView("Products");
		 ServiceController srv=new ServiceController();
		 
		 Gson gs=new Gson();
		 ProductDaoImpl l=srv.getProduct();
		 
		 String json=gs.toJson(l);
		 mv.addObject("list", json.toString());
		 return mv;
				
		}
	
	 @RequestMapping("/productDisplay")
	 public ModelAndView showdata()
	 {
		 ModelAndView mv=new ModelAndView("Products");

		 Gson gs=new Gson();
		 ProductDaoImpl l=x.getProduct();
		 
		 String json=gs.toJson(l);
		 mv.addObject("list", json.toString());
		 return mv;
	 }
	 
	 @RequestMapping("/display")
	 public ModelAndView addData(Product p)
	 {
		 ModelAndView mv=new ModelAndView("Products");
		 Product pp=new Product();
		 pp.setPID(1001);
		 pp.setType("music");
		 pp.setBrand("Guitar");
		 pp.setPrice(1000);
		 pp.setCategory("Musical instrument");
		 x.saveProduct(p);
		 		 
		 return mv;
	 }
	
	 @RequestMapping(value="/displayProducts",method=RequestMethod.GET)
	 public Model displayProduct(Model m)
	 {
		 ArrayList<Product> pd=x.getAllProducts();
		 m.addAttribute("pd",pd);
		 return m;
	 }
	 
	 
	 
	
	 

	 
	 @RequestMapping("/Login")
	public ModelAndView hello()
	{
		ModelAndView modelandview=new ModelAndView("Login");
		return modelandview;
			
	}
	 @RequestMapping("/Register")
		public ModelAndView hello1()
		{
			ModelAndView modelandview=new ModelAndView("/Register");
			return modelandview;
				
		}

	 @RequestMapping("/getData")
		public ModelAndView showProduct()
	{
		 
		 
		 ModelAndView mv=new ModelAndView("getData");
		 
		 Gson gs=new Gson();
		 ArrayList<Product> p= (ArrayList<Product>) x.getAllProducts();
		 
		 String json=gs.toJson(p);
		 System.out.println(json);
		 mv.addObject("list", json.toString());
		 return mv;
				
			/*ModelAndView m=new ModelAndView("getData");
			
			ArrayList<Product> p= (ArrayList<Product>) x.getAllProducts();
			Iterator i=p.iterator();
			while(i.hasNext())
			{
				Product x=(Product) i.next();
				System.out.println(x.getPID());
				System.out.println(x.getType());
				System.out.println(x.getBrand());
				System.out.println(x.getPrice());
				System.out.println(x.getCategory());
				
			}
			m.addObject(p);
			return m;*/
		}   
	 

}