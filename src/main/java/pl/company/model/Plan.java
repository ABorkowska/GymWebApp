package pl.company.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.lang.Nullable;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import java.util.ArrayList;
import java.util.List;


@Table(name = "plans")
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Plan {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column (name="amount")
	private Integer numberOfClasses;
	
	@NotBlank
	private String name;
	
	//@Positive
	@Pattern(regexp="\\d{2,5}.\\d{2}")
	private Double price;
	
	//todo jak ma wygladac relacja member-plan?
	@Nullable
	@OneToMany
	@JoinTable(name="plan_user",
			joinColumns=@JoinColumn(name="plan_id_"),
			inverseJoinColumns=@JoinColumn(name="user_id"))
	private List<User> users = new ArrayList<>();
	}
	
