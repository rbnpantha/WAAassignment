package rbn.edu.statemanagement.controller;

import rbn.edu.statemanagement.domain.User;
import rbn.edu.statemanagement.service.UserService;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
// @SessionAttributes("user")
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping(value = { "/", "/login" }, method = RequestMethod.GET)
	public String getLoginForm(@CookieValue(value = "myCookieName", defaultValue = "") String myCookieName,
			@CookieValue(value = "myCookiePassword", defaultValue = "") String myCookiePassword, Model model) {
		System.out.println("inside getLoginForm");
		if (!myCookieName.equals(null)) {
			model.addAttribute("userNameCookie", myCookieName);
			model.addAttribute("passwordCookie", myCookiePassword);
		}
		return "login";
	}

	/*
	 * @RequestMapping(value={"/","/login"}, method=RequestMethod.GET) public
	 * String getLoginForm(){ return "login"; }
	 */

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String authenticate(User user, Model model, HttpSession session, RedirectAttributes redirectAttributes,
			HttpServletResponse response, HttpServletRequest request) {

		if (userService.authenticateUser(user)) {

			System.out.println("The value in chkbox is : :" + request.getParameter("remember"));

			if ("1".equals(request.getParameter("remember"))) {
				Cookie cookieName = new Cookie("myCookieName", user.getUserName());
				// cookie session for 2 months
				cookieName.setMaxAge(2 * 30 * 24 * 60 * 60);
				Cookie cookiePass = new Cookie("myCookiePassword", user.getPassword());
				cookiePass.setMaxAge(2 * 30 * 24 * 60 * 60);
				response.addCookie(cookieName);
				response.addCookie(cookiePass);

			}

			// model.addAttribute("user",user);
			// return "welcome";
			// follow PRG pattern
			session.setAttribute("user", user);
			// flash attributes
			redirectAttributes.addFlashAttribute("message", "Refresh and I will go like a flash!");
			return "redirect:/welcome";
		} else {
			model.addAttribute("err_msg", " Incorrect Username or Password!");
			return "login";
		}

	}

	@RequestMapping(value = "/logout")
	public String logout(SessionStatus status, HttpSession session) {
		// status.setComplete();
		session.invalidate();
		return "redirect:/login";
	}

	@RequestMapping(value = { "/welcome" }, method = RequestMethod.GET)
	public String welcome() {
		return "welcome";
	}
}
