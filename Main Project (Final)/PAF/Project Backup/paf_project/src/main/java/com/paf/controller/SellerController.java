package com.paf.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.paf.dao.CustomerDao;
import com.paf.dao.SellerDao;
import com.paf.model.Seller;

@Controller
public class SellerController {

	@Autowired
	public SellerDao dao;

	@RequestMapping(value = "/viewAllSeller")
	public ModelAndView viewAllSeller(ModelAndView model) {
		List<Seller> listSeller = dao.getAllSeller();
		model.addObject("listSeller", listSeller);
		model.setViewName("seller");

		return model;
	}

	@RequestMapping(value = "/searchSeller")
	public ModelAndView searchSeller(HttpServletRequest request, ModelAndView model) {
		String val = request.getParameter("searchVal");
		List<Seller> listSeller = dao.searchSeller(val);
		model.addObject("listSeller", listSeller);
		model.setViewName("seller");

		return model;
	}

	@RequestMapping(value = "/deleteSeller", method = RequestMethod.GET)
	public ModelAndView deleteCustomer(HttpServletRequest request) {
		String comm = request.getParameter("command");
		int suppID = Integer.parseInt(request.getParameter("suppID"));
		dao.delete(suppID, comm);

		if (comm.equals("active")) {
			JOptionPane.showMessageDialog(null, "Seller Activated Sucessfully!", "Activation",
					JOptionPane.INFORMATION_MESSAGE);
		}

		else if (comm.equals("inactive")) {
			JOptionPane.showMessageDialog(null, "Seller Deactivated Sucessfully!", "Deactivation",
					JOptionPane.INFORMATION_MESSAGE);
		}

		return new ModelAndView("redirect:/viewAllSeller");

	}

	@RequestMapping(value = "/addSeller", method = RequestMethod.GET)
	public ModelAndView addSeller(ModelAndView model) {
		Seller seller = new Seller();
		model.addObject("seller", seller);
		model.setViewName("addSeller");
		return model;
	}

	@RequestMapping(value = "/saveSeller", method = RequestMethod.POST)
	public ModelAndView saveSeller(@ModelAttribute Seller seller) {
		int x = dao.add(seller);
		System.out.println(x);
		return new ModelAndView("redirect:/viewAllSeller");
	}
	
	@RequestMapping(value = "/editSeller", method = RequestMethod.GET)
    public ModelAndView editSeller(HttpServletRequest request) {
        int suppID = Integer.parseInt(request.getParameter("sID"));
        Seller seller = dao.getSeller(suppID);
        ModelAndView model = new ModelAndView("editSeller");
        model.addObject("seller", seller);
 
        return model;
    }
	
	@RequestMapping(value = "/editSaveSeller", method = RequestMethod.POST)
	public ModelAndView editSaveSeller(@ModelAttribute Seller seller) {
		int x = dao.edit(seller);
		System.out.println(x);
		return new ModelAndView("redirect:/viewAllSeller");
	}
	
}
