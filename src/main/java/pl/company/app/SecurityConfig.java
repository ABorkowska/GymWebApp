package pl.company.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.event.EventListener;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import pl.company.service.SecurityService;
import pl.company.service.UserDetailsServiceImpl;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Bean
	public UserDetailsServiceImpl userDataService() {
		return new UserDetailsServiceImpl();
	}
	
	@Bean
	public BCryptPasswordEncoder passEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers("/home", "/login").permitAll()
				.antMatchers("/gym/**").permitAll()
				.antMatchers("/admin/**").hasRole("ADMIN")
				//.antMatchers("/about/**").hasAnyRole("USER", "ADMIN")
				.and().formLogin()
				//.permitAll();     //przekierowuje na strone logowania
				.loginPage("/gym/login")        //adres naszej strony logowania (nadpisuje domyslny formularz)
				.defaultSuccessUrl("/home")
				.usernameParameter("username")
				.passwordParameter("password")
				.failureUrl("/gym/login?error=true");
	}

//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		http.authorizeRequests()
//				.antMatchers("/home").permitAll()
//				.antMatchers("/gym/**").authenticated()
//				.and().formLogin();
//	}
	
//	@Override
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth.userDetailsService(userDetailsService);
//	}
	
//	@Override
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth.inMemoryAuthentication()
//				.withUser("kamil").password(passEncoder().encode("Kamil333")).roles("USER")
//				.and()
//				.withUser("BartoszB").password(passEncoder().encode("Bartek44")).roles("ADMIN");
//	}

	
//	@EventListener(ApplicationReadyEvent.class)     //tworzy usera przy starcie aplikacji
//	public void get(){
//		Admin user = new Admin(1L,"BartoszB", passEncoder().encode("Iron44"), "ROLE_ADMIN");
//		Admin user1 = new Admin(2L,"kamil", passEncoder().encode("Iron33"), "ROLE_USER");
//		userRepo.save(user);
//		userRepo.save(user1);
//
	}
	
//	@Bean
//	public HttpFirewall looseHttpFirewall() {
//		StrictHttpFirewall firewall = new StrictHttpFirewall();
//		firewall.setAllowedHttpMethods(Arrays.asList("GET", "POST"));
//		firewall.setAllowSemicolon(true);
//		firewall.setAllowUrlEncodedSlash(true);
//		firewall.setAllowBackSlash(true);
//		firewall.setAllowUrlEncodedPercent(true);
//		firewall.setAllowUrlEncodedPeriod(true);
//		return firewall;
//	}
	




