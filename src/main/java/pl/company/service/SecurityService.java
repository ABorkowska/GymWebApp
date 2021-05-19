package pl.company.service;

public interface SecurityService {
	
	String findLoggedInUser();      //aktualnie zalogowany user
	
	void autoLogin (String username, String password);   //auto-logowanie po rejestracji
}
