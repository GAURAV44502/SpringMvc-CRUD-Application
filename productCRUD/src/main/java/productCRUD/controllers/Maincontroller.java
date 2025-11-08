package productCRUD.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productCRUD.Dao.ProductDao;
import productCRUD.models.Product;

@Controller
public class Maincontroller {

	@Autowired
	private ProductDao productdao;
	
	@RequestMapping("/home")
	public String gethome(Model m)
	{
		List<Product> products=productdao.getAll();
		m.addAttribute("product",products);
		System.out.println(products);
		return "home";
	}
	
	@RequestMapping("/addproduct")
	public String add_product(Model m)
	{
		m.addAttribute("title","Add Product");
		return "add_form";
	}
	
	@RequestMapping(path="/handleProduct", method=RequestMethod.POST)
	public RedirectView handleProducts(@ModelAttribute Product product)
	{
		RedirectView redirectview=new RedirectView();
		System.out.println(product);
		productdao.addproduct(product);
		redirectview.setUrl("home");
		return redirectview;
	}
	
	@RequestMapping("/delete/{productid}")
	public String deleteproduct(@PathVariable("productid") int productid)
	{
		this.productdao.deleterecord(productid);
		return "redirect:/home";
	}
	
	@RequestMapping("/update/{productid}")
	public String Updateform(@PathVariable("productid") int productid,Model m)
	{
		Product product=this.productdao.getProduct(productid);
		m.addAttribute("products",product);
		return "update_form";
	}
}
