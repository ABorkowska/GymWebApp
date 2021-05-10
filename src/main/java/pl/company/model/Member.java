package pl.company.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.Range;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.ArrayList;
import java.util.List;

@Table(name="members")
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer id;
	
	@Email
	@NotBlank
	private String email;
	
	@Size(min=3, max=20)
	@NotBlank
	private String login;
	
	@Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$", message="......")
	@NotBlank
	private String password;
	
	@Column(name="user_code")
	private Integer userCode;
	
	//many to many do schedule -> member podrzedny w relacji
	@ManyToMany(mappedBy="members")
	private List<Schedule> classes = new ArrayList<>();
	
	//one to many do plan
	@OneToMany(mappedBy="member")
	private List<Plan> plans = new ArrayList<>();
	
	
}
