package com.example;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AppController {

	@Autowired
	private UserRepository repo;

	@GetMapping("")
	public String viewindexPage() {
		return "Home";
	}

	@GetMapping("/Home")
	public String viewHomePage(Model model) {

		return "Home";
	}

	
	@GetMapping("/Mobiles")
	public String viewMobilesPage(Model model) {

		return "Mobiles";
	}

	@GetMapping("/Smartwatches")
	public String viewSmartwatchesPage(Model model) {
		return "Smartwatches";
	}

	@GetMapping("/Laptops")
	public String viewLaptopsPage(Model model) {

		return "Laptops";
	}

	@GetMapping("/Jewellery")
	public String viewJewellerysPage(Model model) {

		return "Jewellery";
	}

	@GetMapping("/Help&Settings")
	public String viewHelpPage(Model model) {

		return "Settings";
	}


	@GetMapping("/Admin")
	public String viewSettingsPage(Model model) {
		model.addAttribute("user", new User());
		return "Admin";
	}

	@GetMapping("/Login")
	public String viewLoginPage(Model model) {

		return "Login";
	}

	@GetMapping("/SignUp")
	public String viewSignUpPage(Model model) {
		model.addAttribute("user", new User());
		return "SignUp";
	}

	@GetMapping("/SignedLogin")
	public String viewSignedLoginPage(Model model) {
		return "login";
	}

	@PostMapping("/Process_Signup")
	public String ProcessSignup(User user) {

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		repo.save(user);
		return "SignUp_success";
	}

	@GetMapping("/Customer")
	public String viewcustomerPage(Model model) {
		return "Customer";
	}
	
	@GetMapping("/Logout")
	public String returntoLoggedout(Model model) {
		return "Logout";
	}

	@GetMapping("/Loggedout")
	public String returntoHomePage(Model model) {
		return "Home";
	}

	@GetMapping("/Cart")
	public String viewcartPage(Model model) {
		return "Cart";
	}

}