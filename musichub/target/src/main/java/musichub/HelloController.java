package musichub;
import javax.servlet.http.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController 
{
	 @RequestMapping("/Login")
	public ModelAndView hello()
	{
		ModelAndView modelandview=new ModelAndView("Login");
		return modelandview;
			
	}
	 @RequestMapping("/Register")
		public ModelAndView hello()
		{
			ModelAndView modelandview=new ModelAndView("Register");
			return modelandview;
				
		}

}
