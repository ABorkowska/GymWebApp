package pl.company.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.NumberFormat;

import javax.persistence.*;
import javax.validation.constraints.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "classes_users")
@Entity
public class ClassRegister {
	
	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	private Schedule schedule;
	
	@ManyToOne
	private User user;
	
	@NotBlank
	@Email
	private String mail;
	
	@NotNull
	@NumberFormat(style = NumberFormat.Style.NUMBER)
	@Min(9)
	@Max(13)
	private Integer contactNumber;
	
	
	
	
}