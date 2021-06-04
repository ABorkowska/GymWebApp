package pl.company.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.company.enums.Equipment;
import pl.company.enums.MuscleGroup;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.List;


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
	
	@ManyToMany(mappedBy="exercises")
	private List<Workout> workouts = new ArrayList<>();
	
	@Override
	public String toString() {
		return "Exercise{" +
				"id=" + id +
				", name='" + name + '\'' +
				", muscleGroup=" + muscleGroup +
				", equipment=" + equipment +
				'}';
	}
}