package pl.company.model;

import com.sun.xml.bind.v2.TODO;
import lombok.*;
import org.springframework.lang.Nullable;

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
@EqualsAndHashCode
public class Member {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer id;
	
	@NotBlank
	@Size(min=3, max=20)
	private String firstName;
	
	@NotBlank
	@Size(min=3, max=20)
	private String lastName;
	
	@NotBlank
	@Email (message="Niepoprawny format adresu e-mail")
	private String email;
	
	@NotBlank
	@Size(min=3, max=20)
	@Column(unique=true)
	private String login;
	
	@NotBlank
	@Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$",
			message="Hasło musi zawierać co najmniej 8 znaków, w tym co najmniej jedną dużą literę i co najmniej jedna cyfrę")
	private String password;
	
	private String subscribed;
	
	//private String role;
	
	//many to many do schedule -> member podrzedny w relacji
	@ManyToMany(mappedBy="members")
	private List<Schedule> classes = new ArrayList<>();
	
	@Nullable
	@ManyToOne
	private Plan plan;
	
	//TODO relacja member-workout???
	//one to many do workouts -> jednokierunkowa
//	@OneToMany(mappedBy="member")
//	private List<Plan> workouts = new ArrayList<>();
}
