package com.celab.화면;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class api_controller {
	
	@RequestMapping("firstAPI")
	public ModelAndView mv1(){
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("firstAPI");
		return mv;
	}

}	
