package com.fatec.LBDAvaliacao02.servlet;

import java.io.IOException;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Personagem;
import persistence.fichaDao;

@Controller
public class FichaServlet {
	@RequestMapping(name = "ficha", value = "/ficha/{classe}", method = RequestMethod.GET)
	public ModelAndView besteiroGet(@PathVariable("classe") String classe,ModelMap model) {
		fichaDao fichaDao = new fichaDao();
		Personagem p = new Personagem();
		try {
			p = fichaDao.buscarFicha(classe);
		} catch (IOException e) {
			e.printStackTrace();	
		}
		model.addAttribute("personagem",p);
		return new ModelAndView("ficha");

	}
	
	@RequestMapping(name = "ficha", value = "/ficha/{classe}", method = RequestMethod.POST)
	public ModelAndView besteiroPost(@RequestParam Map<String, String> allRequestParam) {
		return new ModelAndView("ficha");
	}
}
