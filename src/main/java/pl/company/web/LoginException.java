package pl.company.web;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice
public class LoginException extends Throwable{
	
//	@ExceptionHandler(ErrorController.class)
//	@ResponseStatus(value= HttpStatus.NOT_FOUND)
//	public String handleNotFoundException(HttpServletRequest req, Exception exception, Model model) {
//		model.addAttribute("exception", exception);
//		model.addAttribute("url", req.getRequestURL() );
//		model.addAttribute("errorMessage", exception.getMessage());
//		return "exception-page";
//	}
	@ExceptionHandler(LoginException.class)
	@ResponseStatus(value= HttpStatus.INTERNAL_SERVER_ERROR)
	public String handleException(HttpServletRequest req, Exception exception, Model model) {
		model.addAttribute("exception", exception);
		model.addAttribute("url", req.getRequestURL() );
		model.addAttribute("errorMessage", exception.getMessage());
		return "error-login";
	}
}
