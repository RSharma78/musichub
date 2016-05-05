package musichub;

import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
public class HelloController 
{
	
	
	 @RequestMapping("/Products")
		public ModelAndView hello2()
		{
		 ModelAndView mv=new ModelAndView("Products");
		 ServiceController srv=new ServiceController();
		 
		 Gson gs=new Gson();
		 ArrayList<Product> l=srv.getProduct();
		 
		 String json=gs.toJson(l);
		 mv.addObject("list", json.toString());
		 return mv;
				
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

	   
	 

}