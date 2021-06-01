package pl.company.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.lang.Nullable;
import pl.company.enums.Equipment;
import pl.company.enums.MuscleGroup;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;


@Table(name = "exercises")
@Entity
@Getter
@Setter
@NoArgsConstructor
public class Exercise {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank
	private String name;
	
	@Enumerated(EnumType.STRING)
	private MuscleGroup muscleGroup;
	
	@Enumerated(EnumType.STRING)
	private Equipment equipment;
	
	@Nullable
	@ManyToOne()
	private Workout workout;
}